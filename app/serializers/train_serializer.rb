class TrainSerializer < ActiveModel::Serializer
  attributes :id, :departs, :arrives, :line
end
