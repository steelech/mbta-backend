class AddDirectionIdToTrips < ActiveRecord::Migration
  def change
    add_column :trips, :direction_id, :string
  end
end
