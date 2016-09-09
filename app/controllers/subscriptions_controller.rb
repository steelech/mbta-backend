class SubscriptionsController < ApplicationController
	def index
		headers['Access-Control-Allow-Origin'] = '*'
		subscriptions = Subscription.where("phone_number = ?", params[:phone_number])
		render json: subscriptions
	end

	def create
		headers['Access-Control-Allow-Origin'] = '*'
		direction = params[:direction]
		trip_id = params[:trip_id]
		route_id = params[:route]
		trip_name = params[:trip_name]
		phone_number = params[:phone_number]
		Subscription.create({ direction_id: direction, 
							  trip_id: trip_id, 
							  route_id: route_id, 
							  phone_number: phone_number,
							  trip_name: trip_name })
		# TwilioClient.new.send_message("direction_id: #{direction}, trip_id: #{trip_id}, route_id: #{route_id}")
		render json: {}
	end

	def destroy 
		headers['Access-Control-Allow-Origin'] = '*'
		puts "suh dude"
		render json: {}
	end

	def show
		headers['Access-Control-Allow-Origin'] = '*'
		subscription = Subscription.find(params[:id])
		Subscription.delete(params[:id])
		render json: subscription
	end
end
