# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
#lib = File.expand_path('../lib', __FILE__)
#$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'briar/version'

Gem::Specification.new do |gem|
  gem.name          = 'briar'
  gem.version       = Briar::VERSION
  gem.authors       = ['Joshua Moody']
  gem.email         = ['joshuajmoody@gmail.com']
  gem.description   = 'extends calabash-ios steps'
  gem.summary       = "briar-#{gem.version}"
  gem.homepage      = 'https://github.com/jmoody/briar'
  gem.license       = 'MIT'

  gem.add_runtime_dependency 'calabash-cucumber'
  gem.add_runtime_dependency 'rake'
  gem.add_runtime_dependency 'syntax' 

  gem.files         = `git ls-files`.split($/)
  gem.executables   = 'briar'
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']
end
