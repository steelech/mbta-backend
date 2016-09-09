class AddPhoneNumberToSubscriptionsTable < ActiveRecord::Migration
  def change
  	add_column :subscriptions, :phone_number, :string
  end
end
