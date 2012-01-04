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
  s.summary     = "Endless page for rails."
  s.description = "Brings endless page to rails 3.1 apps that use assets pipeline."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.1.0"

  s.add_development_dependency "sqlite3"
end
