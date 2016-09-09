class AddStopIdToStops < ActiveRecord::Migration
  def change
    add_column :stops, :stop_id, :string
  end
end
