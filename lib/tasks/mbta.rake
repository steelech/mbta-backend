namespace :mbta do 
	desc "load the database with all commuter rail routes in in the next day"
	task :load_routes => :environment do 
		DatabaseCleaner.delay.clean_with(:truncation, :only => ['routes', 'trips', 'stops'])
		MbtaService.delay.get_schedule
	end

	desc "confirm that Heroku Scheduler is in fact working"
	task :check_scheduler => :environment do 
		puts "Heroku Scheduler definitely works in production"
	end
end