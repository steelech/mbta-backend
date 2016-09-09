class AddRouteIdToRoutes < ActiveRecord::Migration
  def change
    add_column :routes, :route_id, :string
  end
end
