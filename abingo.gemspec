# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'abingo/version'

Gem::Specification.new do |gem|
  gem.authors       = ["Patrick McKenzie"]
  gem.email         = ["patrick@kalzumeus.com"]
  gem.description   = "Rails A/B testing. One minute to install. One line to set up a new A/B test. One line to track conversion."
  gem.summary       = "Rails A/B testing. One minute to install. One line to set up a new A/B test. One line to track conversion."
  gem.homepage      = "http://www.bingocardcreator.com/abingo"

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "abingo"
  gem.require_paths = ["lib"]
  gem.version       = Abingo::VERSION
end
