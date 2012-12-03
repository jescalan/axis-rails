# -*- encoding: utf-8 -*-

$:.push File.expand_path("../lib", __FILE__)
require "roots/version"

Gem::Specification.new do |s|
  s.name        = "roots-rails"
  s.version     = Roots::VERSION
  s.authors     = ["Jeff Escalante"]
  s.email       = ["jeff.escalante@carrotcreative.com"]
  s.homepage    = "http://roots.jenius.me"
  s.summary     = %q{Injects roots css framework, layouts, and assets into your rails app}
  s.description = %q{Injects roots css framework, layouts, and assets into your rails app}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

end