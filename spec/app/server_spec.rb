require 'spec_helper'
require 'rack/test'

require 'derby/server'

describe Derby::Server do
  include Rack::Test::Methods

  let(:app) { described_class }
  
  describe '/' do
    describe 'GET' do
      it 'is ay basic container' do
        get '/'

        expect(last_response['Link'])
          .to include RDF::LDP::CONTAINER_CLASSES[:basic].to_s
      end
    end
  end
end
