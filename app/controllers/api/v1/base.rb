require "grape-swagger"
module API
  module V1
    class Base < Grape::API
      mount API::V1::Garages

      add_swagger_documentation(
        mount_path: "/api/v1/swagger_doc",
        info: {
          title: 'Api For Fix The Holes'
        },
        api_version: "v1",
        hide_documentation_path: true,
        hide_format: true
      )
    end
  end
end
