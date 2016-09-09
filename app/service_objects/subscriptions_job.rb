class SubscriptionsJob

	def self.perform
		# go through each subscription and print out all its info
		Subscription.all.each do |subscription|
			puts "id: #{subscription.id}"
			puts "direction_id: #{subscription.direction_id}"
			puts "trip_id: #{subscription.trip_id}"
			puts "route_id: #{subscription.route_id}"
			puts "phone_number: #{subscription.phone_number} \n\n"
		end
		# return nil
	end
end