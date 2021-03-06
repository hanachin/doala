# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'doala/version'

Gem::Specification.new do |spec|
  spec.name          = "doala"
  spec.version       = Doala::VERSION
  spec.authors       = ["ohtsuka"]
  spec.email         = ["t.o.0526@gmail.com"]

  spec.summary       = %q{Doala}
  spec.description   = %q{Mascot of dragons}
  spec.homepage      = "https://github.com/to0526/doala"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency 'minitest'
end
