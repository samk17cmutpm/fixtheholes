class Garage < ApplicationRecord
  belongs_to :location
  belongs_to :owner
end
