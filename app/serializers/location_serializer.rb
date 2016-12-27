class LocationSerializer < ActiveModel::Serializer
  attributes :id, :long, :lat
  has_one :area
end
