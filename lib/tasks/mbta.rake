namespace :mbta do 
	desc "load the database with all commuter rail routes in in the next day"
	task :load_routes => :environment do 
		puts "rake task"
		ActiveRecord::Base.connection.execute("DELETE from 'routes'")
		ActiveRecord::Base.connection.execute("DELETE from 'trips'")
		ActiveRecord::Base.connection.execute("DELETE from 'stops'")
		MbtaService.get_schedule
	end
end