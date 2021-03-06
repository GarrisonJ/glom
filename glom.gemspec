# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'glom/version'

Gem::Specification.new do |spec|
  spec.name          = "glom"
  spec.version       = Glom::VERSION
  spec.authors       = ["Jackson Gariety"]
  spec.email         = ["personal@jacksongariety.com"]
  spec.description   = "Intelligent package search, without leaving your shell."
  spec.summary       = "Intelligent package search, without leaving your shell."
  spec.homepage      = "https://github.com/JacksonGariety/glom"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
  
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
