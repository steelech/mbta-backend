class RouteSerializer < ActiveModel::Serializer
	has_many :trips
  	attributes :route_name, :route_id
end
