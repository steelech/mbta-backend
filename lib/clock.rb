require 'clockwork'
require './config/boot'
require './config/environment'

module Clockwork
	every(60.seconds, "get data") do 
		DatabaseCleaner.delay.clean_with(:truncation, :only => ['routes', 'trips', 'stops'])
		MbtaService.delay.get_schedule
	end

	every(10.seconds, "second job") do 
		puts "Hello"
	end
end

