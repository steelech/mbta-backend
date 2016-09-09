class AddTripNameToSubscriptionsTable < ActiveRecord::Migration
  def change
  	add_column :subscriptions, :trip_name, :string
  end
end
