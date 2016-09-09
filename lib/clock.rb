require 'clockwork'
require './config/boot'
require './config/environment'

module Clockwork
	# every(1.day, "loading route data", :at => '00:00') do 
	# 	ActiveRecord::Base.connection.execute("DELETE from 'routes'")
	# 	ActiveRecord::Base.connection.execute("DELETE from 'trips'")
	# 	ActiveRecord::Base.connection.execute("DELETE from 'stops'")
	# 	MbtaService.delay.get_schedule
	# end

	every(20.seconds, "SubscriptionsJob") do 
		SubscriptionsJob.delay.perform
	end
end

