class AddReferencesToTrips < ActiveRecord::Migration
  def change
    add_reference :trips, :route, index: true, foreign_key: true
  end
end
