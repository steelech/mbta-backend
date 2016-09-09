class AddTripIdToTrips < ActiveRecord::Migration
  def change
    add_column :trips, :trip_id, :string
  end
end
