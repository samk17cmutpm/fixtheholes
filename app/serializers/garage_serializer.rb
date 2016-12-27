class GarageSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_one :location
  has_one :owner
end
