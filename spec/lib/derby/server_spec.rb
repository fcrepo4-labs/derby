require 'spec_helper'
require 'rack/test'

require 'derby/server'

describe Derby::Server do
  include Rack::Test::Methods

  let(:app) { described_class }
  
  describe '/' do
    describe 'GET' do
      it 'is a basic container' do
        get '/'

        expect(last_response['Link'])
          .to include RDF::LDP::CONTAINER_CLASSES[:basic].to_s
      end
    end

    describe 'POST' do
      it 'creates an RDF source' do
        rdf = '<http://example.org/1> <http://example.org/ns#foo> "foo" .'
        header 'Content-type', 'application/n-triples'
        post '/', rdf
        expect(last_response.status).to eq 201
        expect(last_response.body).to include rdf
        expect(last_response['Link'])
          .to include RDF::LDP::RDFSource.to_uri
      end

      it 'creates a non-RDF source' do
        content = 'We all create stories to protect ourselves.'
        header 'Content-type', 'text/plain'
        header 'Link', '<http://www.w3.org/ns/ldp#NonRDFSource>; rel="type"'
        post '/', content
        expect(last_response.status).to eq 201
        expect(last_response.body).to include content
        expect(last_response['Link'])
          .to include RDF::LDP::NonRDFSource.to_uri
      end
    end
  end
end
