class SubscriptionSerializer < ActiveModel::Serializer
  attributes :id, :created_at, :updated_at, :direction_id, :phone_number, :trip_name, :trip_id
end
