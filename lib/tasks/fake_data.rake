 # TODO: make a better version of this so that the data looks somewhat real
 ROUTE_NAMES = [
 	"Fairmount Line",
 	"Fitchburg Line",
 	"Framingham/Worchester Line",
 	"Franklin Line"
 ]

 ROUTE_IDS = [
 	"Fairmount",
 	"Fitchburg",
 	"Framingham",
 	"Franklin"
 ]

TRIP_IDS = [
	"314324123-CR_MAY2016",
	"123412341-CR_MAY2016",
	"132432143-CR_MAY2016",
	"123413243-CR_MAY2016",
	"079890643-CR_MAY2016",
	"341234132-CR_MAY2016",
	"413241324-CR_MAY2016",
	"753465424-CR_MAY2016",
]

TRIP_NAMES = [
	"1173 (5:50 pm from South Station)",
	"1175 (6:50 pm from South Station)",
	"1177 (7:43 pm from South Station)",
	"1179 (8:34 pm from South Station)",
	"1160 (5:30 pm from Kingston)",
	"1161 (6:45 pm from Kingston)",
	"1162 (7:56 pm from Kingston)",
	"1165 (8:32 pm from Kingston)"
]

DIRECTION_IDS = [
	"0",
	"0",
	"0",
	"0",
	"1",
	"1",
	"1",
	"1"
]

DIRECTION_NAMES = [ 
	"Outbound",
	"Outbound",
	"Outbound",
	"Outbound",
	"Inbound",
	"Inbound",
	"Inbound",
	"Inbound"
]

STOP_IDS = [
	"South Station",
	"Newmarket",
	"Uphams Corner",
	"Four Corners / Geneva",
	"Talbot Avenue",
	"Morton Street",
	"Fairmount",
	"Readville"
]

STOP_NAMES = [
	"South Station",
	"Newmarket",
	"Uphams Corner",
	"Four Corners / Geneva",
	"Talbot Avenue",
	"Morton Street",
	"Fairmount",
	"Readville"

]

STOP_TIMES = [
	"at 5:50PM",
	"at 5:58PM",
	"at 6:01PM",
	"at 6:03PM",
	"at 6:05PM",
	"at 6:07PM",
	"at 6:09PM",
	"at 6:11PM"
]

STOP_SEQUENCES = [ 
	"1",
	"2",
	"3",
	"4",
	"5",
	"6",
	"7",
	"8"
]

namespace :fake do 
	desc "loads fake data into the system so we can work without internet connection"
	task :load_fake_data => :environment do 
		(0..3).each do |index|
			Route.create({ route_id: ROUTE_IDS[index], route_name: ROUTE_NAMES[index]})
		end

		(0..3).each do |route_index|
			(0..7).each do |trip_index| 
				Route.all[route_index].trips.create({ trip_id: TRIP_IDS[trip_index], 
								 					  trip_name: format_trip_name(TRIP_NAMES[trip_index]), 
								 					  direction_id: DIRECTION_IDS[trip_index],
								 					  direction_name: DIRECTION_NAMES[trip_index] })
			end
		end

		(0..7).each do |trip_index|
			(0..7).each do |stop_index|
				Trip.all[trip_index].stops.create({ stop_id: STOP_IDS[stop_index],
													stop_name: STOP_NAMES[stop_index],
													stop_time: STOP_TIMES[stop_index],
													stop_sequence: STOP_SEQUENCES[stop_index]
				 })
			end
		end

	end
end

def format_trip_name(trip_name)
    trip_name.split("(")[1].split(")")[0]

end

 # def format_stop_time(stop_time)
 #                # stop_time
 #                # puts 
 #                puts stop_time
 #                stop_time = Time.at(stop_time.to_i).strftime("%I:%M%p").to_s
 #                if stop_time[0] == "0"
 #                        stop_time[0] = ""
 #                end
 #                "at #{stop_time}"
 #        end





























