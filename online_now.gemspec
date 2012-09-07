# -*- encoding: utf-8 -*-
require File.expand_path('../lib/online_now/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["matt"]
  gem.email         = ["hotiby@gmail.com"]
  gem.description   = "Simple solution to grab all the online users within the last 5 minutes of activity"
  gem.summary       = "Simple way to grab all the online users"
  gem.homepage      = "http://github.com/railsdevmatt/online_now"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "online_now"
  gem.require_paths = ["lib"]
  gem.version       = OnlineNow::VERSION
  gem.add_dependency "rails"
  gem.add_development_dependency "rspec"

end
