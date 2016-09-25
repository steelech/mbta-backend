namespace :subscriptions do 
	desc "goes through all the subscriptions, does stuff to them"
	task :send_alerts => :environment do 
		SubscriptionsJob.delay.perform
	end
end