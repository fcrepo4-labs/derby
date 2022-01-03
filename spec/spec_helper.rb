require "bundler/setup"
require 'rdf/isomorphic'

require 'derby'
require 'derby/server'

require 'rdf/spec'
require 'rdf/spec/matchers'

Dir['./spec/support/**/*.rb'].each { |f| require f }

RSpec.configure do |config|
  config.include(RDF::Spec::Matchers)
  config.filter_run :focus => true
  config.run_all_when_everything_filtered = true
  config.filter_run_excluding integration: ENV['CI']
end

Encoding.default_external = Encoding::UTF_8
Encoding.default_internal = Encoding::UTF_8
