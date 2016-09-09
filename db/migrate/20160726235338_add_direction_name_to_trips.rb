class AddDirectionNameToTrips < ActiveRecord::Migration
  def change
    add_column :trips, :direction_name, :string
  end
end
