#!/usr/bin/env ruby -rubygems
# -*- encoding: utf-8 -*-

Gem::Specification.new do |gem|
  gem.version            = File.read('VERSION').chomp
  gem.date               = File.mtime('VERSION').strftime('%Y-%m-%d')

  gem.name               = 'derby'
  gem.homepage           = 'http://no-reply.github.com/derby'
  gem.license            = 'Public Domain'
  gem.summary            = 'A pure Ruby Fedora Commons implementation.'
  gem.description        = 'Implements the Fedora Commons API specification. Powered by RDF::LDP.'

  gem.authors            = ['tamsin johnson']
  gem.email              = 'johnson.tom@gmail.com'

  gem.platform           = Gem::Platform::RUBY
  gem.files              = %w(AUTHORS CHANGELOG.md README.md LICENSE VERSION) +
                           Dir.glob('lib/**/*.rb') + Dir.glob('app/**/*.rb')
  gem.bindir             = %q(exe)
  gem.executables        = %w(derby-ldp)
  gem.require_paths      = %w(lib)

  gem.required_ruby_version      = '>= 2.0'
  gem.requirements               = []

  gem.add_runtime_dependency     'rdf-ldp', '> 1'

  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'rdf-spec'
  gem.add_development_dependency 'rspec'
  gem.add_development_dependency 'rack-test'
  gem.add_development_dependency 'yard'
  gem.add_development_dependency 'capybara_discoball'
  gem.add_development_dependency 'faraday'
  gem.add_development_dependency 'nokogiri'
  gem.add_development_dependency 'ldp_testsuite_wrapper'

  gem.post_install_message       = nil
end
