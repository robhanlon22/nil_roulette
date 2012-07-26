# -*- encoding: utf-8 -*-
require File.expand_path('../lib/nil_roulette/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Rob Hanlon"]
  gem.email         = ["rob@mediapiston.com"]
  gem.description   = %q{Make all your nil errors disappear.}
  gem.summary       = %q{Who needs NoMethodErrors?}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "nil_roulette"
  gem.require_paths = ["lib"]
  gem.version       = NilRoulette::VERSION
end
