module API
  module V1
    class Garages < Grape::API
      include API::V1::Defaults

      resource :garages do

        desc "return all garages"
        get "", root: :garages do
          Garage.all
        end

      end
    end
  end
end