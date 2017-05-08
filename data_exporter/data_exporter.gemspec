# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'data_exporter/version'

Gem::Specification.new do |spec|
  spec.name          = "data_exporter"
  spec.version       = DataExporter::VERSION
  spec.authors       = ["klismannsm"]
  spec.email         = ["klismannsm@gmail.com"]

  spec.summary       = 'Exports model data into various formats'
  spec.description   = 'Given a compatible export model, this gem exports the data into the specified format'
  spec.homepage      = 'https://github.com/klismannsm/rails_data_exporter'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
