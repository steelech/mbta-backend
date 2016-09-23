class SubscriptionsJob
	def initialize(param1)
		@param = param1
		puts "Param: #{@param}"
	end
	def perform
		puts "performing SubscriptionsJob"
	end
end