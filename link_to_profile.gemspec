# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'link_to_profile/version'

Gem::Specification.new do |gem|
  gem.name          = "link_to_profile"
  gem.version       = LinkToProfile::VERSION
  gem.authors       = ["Devon Blandin"]
  gem.email         = ["dblandin@gmail.com"]
  gem.description   = %q{Generate profile links for Twitter, Facebook, LinkedIn, and others}
  gem.summary       = %q{Easily generate profile links}
  gem.homepage      = "http://github.com/dblandin/link_to_profile"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
