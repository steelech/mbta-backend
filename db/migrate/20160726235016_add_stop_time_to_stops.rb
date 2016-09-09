class AddStopTimeToStops < ActiveRecord::Migration
  def change
    add_column :stops, :stop_time, :string
  end
end
