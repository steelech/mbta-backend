class RoutesController < ApplicationController
	before_action :set_route, only: [:show, :update, :destroy]
	def index
                         headers['Access-Control-Allow-Origin'] = '*'
 			if(params[:route_name])
                                @routes = Route.where("route_name LIKE (?)", "%#{params[:route_name]}%")
                        else
                                @routes = Route.all
                        end

                        # render json: @routes, include: "trips"
                        render json: @routes


	end

        def show
        	# render json: @route, include: 'trips'
            render json: @route
        end

        private
        	def set_route
        		@route = Route.find(params[:id])
        	end

end
