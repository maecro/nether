$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "nether/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "nether"
  s.version     = Nether::VERSION
  s.authors     = ["Matthew Cross"]
  s.email       = ["mattcross88@gmail.com"]
  s.homepage    = "https://github.com/maecro/nether"
  s.summary     = "Endless page for rails 3.1"
  s.description = "Nether is a rails engine for easily adding endless page functionality to content paginated by will_paginate
in your rails 3.1 application. Currently only supports apps using the assets pipeline and will_paginate."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.1.0"

  s.add_development_dependency "sqlite3"
end
