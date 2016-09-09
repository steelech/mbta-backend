class TripsController < ApplicationController
	  before_action :set_trip, only: [:show, :update, :destroy]
	def index
        	headers['Access-Control-Allow-Origin'] = '*'
                 if(params[:trip_name])
                        @trips = Trip.where("trip_name LIKE (?) AND direction_id = ? AND route_id = ?", "%#{params[:trip_name]}%", params[:direction], params[:route])
                        puts @trips
                else
                        @trips = Trip.where("direction_id = ? AND route_id = ?", params[:direction], params[:route])

                end

		render json: @trips, include: 'stops'
	end

        def show
        	headers['Access-Control-Allow-Origin'] = '*'
        	render json: @trip, include: 'stops'
        end

        private
        	def set_trip
                	@trip = Trip.find(params[:id])
        	end

end
