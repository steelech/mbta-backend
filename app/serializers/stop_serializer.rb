class StopSerializer < ActiveModel::Serializer
  attributes :id, :stop_sequence, :stop_id, :stop_name, :stop_time
end

