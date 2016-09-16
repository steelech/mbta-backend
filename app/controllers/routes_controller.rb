class RoutesController < ApplicationController
	before_action :set_route, only: [:show, :update, :destroy]
	def index
                         headers['Access-Control-Allow-Origin'] = '*'
 			if(params[:route_name])
                        route_name = params[:route_name].capitalize
                                @routes = Route.where("route_name LIKE (?)", "%#{route_name}%")
                        else
                                @routes = Route.all
                        end
                        render json: @routes


	end

        def show
            render json: @route
        end

        private
        	def set_route
        		@route = Route.find(params[:id])
        	end

end
