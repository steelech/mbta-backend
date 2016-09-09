class AddDirectionToSubscriptionsTable < ActiveRecord::Migration
  def change
  	add_column :subscriptions, :direction_id, :string
  	add_column :subscriptions, :trip_id, :string
  	add_column :subscriptions, :route_id, :string
  end
end
