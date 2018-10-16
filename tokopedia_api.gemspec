$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "tokopedia_api/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "tokopedia_api"
  s.version     = TokopediaApi::VERSION
  s.authors     = ["Aden Aziz Hasnayakin"]
  s.email       = ["aden.aziz948@gmail.com"]
  s.homepage    = "http://www.grineproject.blogspot.co.id"
  s.summary     = "Unofficial Tokopedia API for Rails"
  s.description = "This plugin gives products & sellers data from tokopedia."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.2.1"

  s.add_development_dependency "sqlite3"
end
