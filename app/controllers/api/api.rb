module API
  class API < Grape::API
    rescue_from ActiveRecord::RecordNotFound do
      rack_response({ 'message' => '404 Not found' }.to_json, 404)
    end

    rescue_from Grape::Exceptions::MethodNotAllowed do |e|
      error! e.message, e.status, e.headers
    end

    rescue_from Grape::Exceptions::Base do |e|
      error! e.message, e.status, e.headers
    end

    format :json
    # prefix 'api'
    content_type :txt, "text/plain"
    
    helpers ::API::Helpers

    mount ::API::ItemApi
    mount ::API::BranchApi

    add_swagger_documentation \
      mount_path: '/swagger_doc'
    
    # route :any, '*path' do
    #   error!('404 Not Found', 404)
    # end
  end
end