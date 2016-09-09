class MbtaService

	attr_accessor :params, :results, :names
        API_KEY = 'wX9NwuHnZU2ToO7GmGR9uw'
        MAX_TIME = 1440
        FORMAT = 'json'
        MAX_TRIPS = 100


	def get_routes
            @names.each do |route_name|
                @params =       {
                        :api_key => API_KEY,
                        :route => route_name,
                        :max_time => MAX_TIME,
                        :format => FORMAT,
                        :max_trips => MAX_TRIPS
                }
                uri = URI('http://realtime.mbta.com/developer/api/v2/schedulebyroute?')
                uri.query = URI.encode_www_form(@params)

                res = Net::HTTP.get_response(uri)
                @results = JSON.parse(res.body)
                route = Route.create({:route_name => @results['route_name'], :route_id => @results['route_id']})
                route.parse_trips(@results)
            end
	end

        def get_route_names(api_key: API_KEY)
        	@params = {
        		:api_key => api_key,
        		:format => 'json'
        	}

            uri = URI('http://realtime.mbta.com/developer/api/v2/routes?')
            uri.query = URI.encode_www_form(@params)
            res = Net::HTTP.get_response(uri)
            @results = JSON.parse(res.body)
            @results["mode"].each do |result|
            	if result["mode_name"] == "Commuter Rail"
                	@names = result["route"].map do |route|
                    	route["route_id"]
                    end
                end
            end
        end

        def self.get_schedule
            schedule = new
            schedule.get_route_names
            schedule.get_routes
        end
     
end