# -*- encoding: utf-8 -*-

$:.push File.expand_path("../lib", __FILE__)
require "roots/version"

Gem::Specification.new do |s|
  s.name        = "roots"
  s.version     = Roots::VERSION
  s.authors     = ["Jeff Escalante"]
  s.email       = ["jeff.escalante@carrotcreative.com"]
  s.homepage    = "http://roots.carrotbeta.com"
  s.summary     = %q{Injects roots sass framework and dynamic layouts into your rails app}
  s.description = %q{Injects roots sass framework and dynamic layouts into your rails app}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # testing
  s.add_development_dependency "rspec"

  # dependencies
  s.add_dependency('haml')
  s.add_dependency('coffee-script')
  s.add_dependency('rdiscount')

end