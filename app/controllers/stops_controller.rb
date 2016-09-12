class StopsController < ApplicationController

	def index
		if(params[:trip_id])
			@stops = Stop.where("trip_id = ?", params[:trip_id]).order(:stop_sequence)
		else
			@stops = Stop.all
		end
		render json: @stops
		headers['Access-Control-Allow-Origin'] = '*'

	end
end
