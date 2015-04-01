# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'edgrid_rb/version'

Gem::Specification.new do |spec|
  spec.name          = "edgrid_rb"
  spec.version       = EdgridRb::VERSION
  spec.authors       = ["zetanova"]
  spec.email         = ["carlosmontalvo@zetanova.com"]

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://rubygems.org"
  end

  spec.summary       = "Ruby wrapper for EdGrid"
  spec.description   = "Allows you to include https://github.com/escueladigital/ed-grid in your application alongside some view helper methods"
  spec.homepage      = "https://github.com/zephiro/edgrid_rb"
  spec.license       = "MIT"

  spec.files         = Dir["{lib,vendor}/**/*"]
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_dependency("railties", ">= 3.2.6", "< 5")
end
