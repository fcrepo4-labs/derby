#!/usr/bin/env ruby -rubygems
# -*- encoding: utf-8 -*-

Gem::Specification.new do |gem|
  gem.version            = File.read('VERSION').chomp
  gem.date               = File.mtime('VERSION').strftime('%Y-%m-%d')

  gem.name               = 'derby'
  gem.homepage           = 'http://no-reply.github.com/derby'
  gem.license            = 'Public Domain' if gem.respond_to?(:license=)
  gem.summary            = 'A pure Ruby Fedora Commons implementation.'
  gem.description        = 'Implements the Fedora Commons API specification. Powered by RDF::LDP.'

  gem.authors            = ['Tom Johnson']
  gem.email              = 'johnson.tom@gmail.com'

  gem.platform           = Gem::Platform::RUBY
  gem.files              = %w(AUTHORS CHANGELOG.md README.md UNLICENSE VERSION) + 
                           Dir.glob('lib/**/*.rb') + Dir.glob('app/**/*.rb')
  gem.bindir             = %q(bin)
  gem.executables        = %w(derby)
  gem.default_executable = gem.executables.first
  gem.require_paths      = %w(lib app)
  gem.has_rdoc           = false

  gem.required_ruby_version      = '>= 2.0.0'
  gem.requirements               = []

  gem.add_runtime_dependency     'rdf-ldp', '~> 0.4'

  gem.add_development_dependency 'rdf-spec',    '~> 1.1', '>= 1.1.13'
  gem.add_development_dependency 'rspec',       '~> 3.0'
  gem.add_development_dependency 'rack-test',   '~> 0.6'
  gem.add_development_dependency 'yard',        '~> 0.8'

  gem.post_install_message       = nil
end