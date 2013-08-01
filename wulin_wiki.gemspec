# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'wulin_wiki/version'

Gem::Specification.new do |spec|
  spec.name          = "wulin_wiki"
  spec.version       = WulinWiki::VERSION
  spec.authors       = ["Ekohe"]
  spec.email         = ["dev@ekohe.com"]
  spec.description   = %q{Wiki for WulinMaster grid}
  spec.summary       = %q{Wiki for WulinMaster grid}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_dependency 'haml-rails'
end
