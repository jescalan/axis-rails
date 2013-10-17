# -*- encoding: utf-8 -*-

$:.push File.expand_path("../lib", __FILE__)
require "axis/version"

Gem::Specification.new do |s|
  s.name        = "axis-rails"
  s.version     = Axis::VERSION
  s.authors     = ["Jeff Escalante"]
  s.email       = ["hello@jenius.me"]
  s.homepage    = "http://roots.cx/axis"
  s.summary     = %q{Stylus and axis css library for rails}
  s.description = %q{Injects stylus, axis framework, slim, layouts, and assets into your rails app}
  s.license     = "MIT"
  
  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

end
