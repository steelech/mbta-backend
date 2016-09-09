class AddStopSequenceToStops < ActiveRecord::Migration
  def change
    add_column :stops, :stop_sequence, :string
  end
end
