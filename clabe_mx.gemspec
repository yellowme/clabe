$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "clabe/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "clabe_mx"
  spec.version     = Clabe::VERSION
  spec.date        = '2019-10-10'
  spec.description = "Ruby gem to validate and get details from a CLABE"
  spec.summary     = "Validate and get details from a CLABE"
  spec.files       = `git ls-files`.split($/)
  spec.executables = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files  = `git ls-files -- {test,spec,features}/*`.split("\n")
  spec.authors     = ["Yellowme"]
  spec.email       = 'hola@yellowme.mx'
  spec.homepage    = 'https://rubygems.org/gems/clabe'
  spec.license      = 'MIT'

  spec.add_development_dependency "rspec", "~> 3.8"
end
