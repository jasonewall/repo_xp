# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'repo_xp/version'

Gem::Specification.new do |spec|
  spec.name          = "repo_xp"
  spec.version       = RepoXp::VERSION
  spec.authors       = ["Jason Wall"]
  spec.email         = ["javajo@gmail.com"]

  spec.summary       = %q{Implementation of the repository pattern for flexible Rails applications.}
  spec.homepage      = "https://github.com/jasonewall/repo_xp"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features|adapters)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
