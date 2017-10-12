$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "json_responder/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "json_responder"
  s.version     = JsonResponder::VERSION
  s.authors     = ["Zachary Welch"]
  s.email       = ["Zachary.Welch@careerbuilder.com"]
  s.homepage    = "https://cagit.careerbuilder.com/zwelch/json_responder"
  s.summary     = "Json Responder for responders gem."
  s.description = "Json Responder for responders gem."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["spec/**/*"]

  s.add_dependency "rails", "~> 4.0"
  s.add_dependency "responders"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails", "~> 3.5"
end
