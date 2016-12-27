GrapeSwaggerRails.options.before_action do
  GrapeSwaggerRails.options.url      = '/api/v1/swagger_doc'
  GrapeSwaggerRails.options.app_url = request.protocol + request.host_with_port
  GrapeSwaggerRails.options.app_name = 'FIX THE HOLES'
  GrapeSwaggerRails.options.doc_expansion = 'list'
end
