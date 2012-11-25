# -*- encoding: utf-8 -*-
require File.expand_path('../lib/nofakemail/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Nils Berenbold"]
  gem.email         = ["nils.berenbold@gmail.com"]
  gem.description   = "a Gem which checks if an E-Mail-Address is a Trash-Mail"
  gem.summary       = ""
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "nofakemail"
  gem.require_paths = ["lib"]
  gem.version       = Nofakemail::VERSION
end
