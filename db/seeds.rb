# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# stop = Stop.create 
# stop.update_attribute(:stop_name, "Kingston")
# stop.update_attribute(:stop_id, "kingston")
# stop.update_attribute(:stop_sequence, 1)

# trip = Trip.create 
# trip.update_attribute(:trip_name, "Kingston morning")
# trip.update_attribute(:trip_id, "kingston_morning")
# trip.stops << stop


# create all the routes
# loop through a set of trips
# --> for each trip created, loop through the routes and add that trip to route.trips
# end loop
# loop through a set of stops
# --> for each stop created, loop through the trips and add that trip to trip.stops

 ROUTE_NAMES = [
 	"Fairmount Line",
 	"Fitchburg Line",
 	"Framingham/Worchester Line",
 	"Franklin Line"
 ]

ROUTE_NAMES.each do |route_name|
	puts route_name
end

 ROUTE_IDS = [
 	"Fairmount",
 	"Fitchburg",
 	"Framingham",
 	"Franklin"
 ]

(0..3).each do |index|
	Route.create({ route_id: ROUTE_IDS[index], route_name: ROUTE_NAMES[index]})
end

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

(0..7).each do |index|
	trip = Trip.create({ trip_id: TRIP_IDS[index], 
						 trip_name: TRIP_NAMES[index], 
						 direction_id: DIRECTION_IDS[index],
						 direction_name: DIRECTION_NAMES[index] })
	# (0..3).each do |index|
	# 	Route.all[index].trips << trip
	# end
end


































