class AddDirectionToRoutes < ActiveRecord::Migration
  def change
  	add_column :routes, :direction_name, :string
  	add_column :routes, :direction_id, :string
  end
end
