

	# class RoutesSearchResult
	#   extend ActiveModel::Naming
	#   include ActiveModel::Serialization

	#   attr_accessor :attributes, :route_id, :route_name, :raw_json, :trips

	#   def initialize(json_response)
	#     @raw_json = json_response
	#     @route_id = raw_json["route_id"]
	#     @route_name = raw_json["route_name"]
	#     get_trips(raw_json["direction"][0])
	#   end

	#   def get_trips(trips)

        #   	@trips = trips["trip"].map |trip|
        #   		MBTA::Trip.new(trip["trip_id"], trip["trip_name"], trip["stop"])
        #        end
        #             end
        #   end
	#   	# trips["trip"].each do |trip|
	#   	# 	my_trip = MBTA::Trip.new(trip["trip_id"], trip["trip_name"], trip["stop"])
	#   	# end

	#   def get_stops
	#   end
	# end

        class Search
        	extend ActiveModel::Naming
        	include ActiveModel::Serialization

        	attr_accessor :attributes, :Id, :Name, :raw_json, :trips, :id

        	  def initialize(json_response)
        	    @raw_json = json_response
        	    @Id = raw_json["route_id"]
        	    @Name = raw_json["route_name"]
        	    get_trips(raw_json["direction"][0])
        	  end


                  def get_trips(trips)
                  	@trips = trips['trip'].map do |trip|
                  		Trip.new(trip["trip_id"], trip["trip_name"], trip["stop"])
                  	end 
                  		
                  end

                



        end