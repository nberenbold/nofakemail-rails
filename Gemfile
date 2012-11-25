# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "nofakemail/version"

Gem::Specification.new do |s|
  s.name        = "nofakemail"
  s.version     = Nofakemail::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Nils Berenbold"]
  s.email       = ["nils.berenbold@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Lorem ipsum generator}
  s.description = %q{Simply generates lorem ipsum text.}
  
  s.add_development_dependency "rspec"

  #s.rubyforge_project = "lorem"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end