namespace :mbta do 
	desc "load the database with all commuter rail routes in in the next day"
	task :load_routes => :environment do 
		MbtaService.get_schedule
	end
end