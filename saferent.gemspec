# -*- encoding: utf-8 -*-
require File.expand_path('../lib/saferent/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Hasham Malik"]
  gem.email         = ["hasham2@gmail.com"]
  gem.description   = %q{Screen rental applications with corelogic saferent webservice}
  gem.summary       = %q{Screen rental applications with corelogic saferent webservice}
  gem.homepage      = ""
  
  gem.add_dependency "configatron"
  gem.add_dependency "httparty"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "saferent"
  gem.require_paths = ["lib"]
  gem.version       = Saferent::VERSION
end
