# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'freeman/version'

Gem::Specification.new do |spec|
  spec.name          = "freeman"
  spec.version       = Freeman::VERSION
  spec.authors       = ["Kristian Freeman"]
  spec.email         = ["kristian@kristianfreeman.com"]
  spec.description   = %q{A very simple test gem}
  spec.summary       = %q{An experimental Ruby test gem for simple testing. Long live Ruby!}
  spec.homepage      = "https://github.com/imkmf/freeman"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
