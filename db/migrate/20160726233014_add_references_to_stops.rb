class AddReferencesToStops < ActiveRecord::Migration
  def change
    add_reference :stops, :trip, index: true, foreign_key: true
  end
end
