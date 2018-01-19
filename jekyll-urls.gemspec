# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jekyll-urls/version'

Gem::Specification.new do |spec|
  spec.name          = "jekyll-urls"
  spec.version       = Jekyll::Urls::VERSION
  spec.authors       = ["Arkady Zalkowitsch"]
  spec.email         = ["arkady@carta.com"]
  spec.summary       = %q{Jekyll urls.}
  spec.description   = 'Access pages url within your Jekyll liquid templates'
  spec.homepage      = "https://github.com/arkadyzalko/jekyll-urls"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/).grep(%r{(lib/)})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "jekyll", "~> 2.0"
  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake", "~> 0"
  spec.add_development_dependency "rspec", "~> 0"
end