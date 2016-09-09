class TripSerializer < ActiveModel::Serializer
  attributes :id, :trip_name, :trip_id, :direction_id, :direction_name
  has_many :stops
end
