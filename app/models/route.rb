class Route < ActiveRecord::Base
	has_many :trips

        def parse_trips(raw_json)
        	raw_json["direction"].each do |direction|
                direction_id = direction["direction_id"]
                direction_name = direction["direction_name"]
        		direction["trip"].each do |trip|
                    if not before_now?(trip)
                        this_trip = Trip.create({:trip_name => format_trip_name(trip["trip_name"]), 
                                                 :trip_id => trip["trip_id"],
                                                 :direction_id => direction_id, 
                                                 :direction_name => direction_name})
                        this_trip.parse_stops(trip)
                        self.trips << this_trip
                    end
        		end
        	end
        end

        def before_now?(trip)
            puts trip["trip_name"].split("(")[1]
            Time.parse(trip["trip_name"].split("(")[1].split(" f")[0]) < Time.now
        end

        def format_trip_name(trip_name)
            trip_name.split("(")[1].split(")")[0]

        end
end
