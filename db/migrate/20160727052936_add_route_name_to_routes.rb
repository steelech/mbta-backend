class AddRouteNameToRoutes < ActiveRecord::Migration
  def change
    add_column :routes, :route_name, :string
  end
end
