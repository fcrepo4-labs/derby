require 'derby'
require 'sinatra/base'
require 'rack/ldp'

module Derby 
  class Server < Sinatra::Base
    use Rack::LDP::ContentNegotiation
    use Rack::LDP::Errors
    use Rack::LDP::Responses
    use Rack::ConditionalGet
    use Rack::LDP::Requests

    configure { set :repository, RDF::Repository.new }

    run! if app_file == $0
  end
end
