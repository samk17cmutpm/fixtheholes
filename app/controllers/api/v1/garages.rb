module API
  module V1
    class Garages < Grape::API
      include API::V1::Defaults

      resource :garages do

        desc "return all garages"
        get "", root: :garages do
          {:success => true}
        end

      end
    end
  end
end