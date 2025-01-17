# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jose/version'

Gem::Specification.new do |spec|
  spec.name          = "autopass-jose"
  spec.version       = JOSE::VERSION
  spec.authors       = ["Eric Tsai"]
  spec.email         = ["erictsai@pklotcorp.com"]

  spec.summary       = %q{JSON Object Signing and Encryption}
  spec.description   = %q{JSON Object Signing and Encryption}
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = 'https://autopass.xyz'
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "base64"
  spec.add_dependency "immutable-ruby"

  spec.add_development_dependency "bundler", "~> 2.5"
  spec.add_development_dependency "rake", "~> 13.1"
  spec.add_development_dependency "minitest"
  spec.add_development_dependency "json"
  spec.add_development_dependency "rbnacl"
  spec.add_development_dependency "ed25519"
  spec.add_development_dependency "x25519"
end
