# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'nmax/version'

Gem::Specification.new do |spec|
  spec.name          = 'fun_nmax'
  spec.version       = Nmax::VERSION
  spec.authors       = ['Dmitry Vysotsky']
  spec.email         = ['bigbenperl@gmail.com']

  spec.summary       = 'Finds numbers in a text.'
  spec.description   = 'Finds numbers in a text.'
  spec.homepage      = 'https://github.com/astorre88/nmax'
  spec.license       = 'MIT'

  spec.metadata['allowed_push_host'] = 'https://rubygems.org/'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/astorre88/nmax'
  spec.metadata['changelog_uri'] = 'https://github.com/astorre88/nmax/blob/master/CHANGELOG.md'

  spec.executables << 'nmax'
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 2.0'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end
