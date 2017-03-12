$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "backup_api/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "backup_api"
  s.version     = BackupApi::VERSION
  s.authors     = ["Dark"]
  s.email       = ["darkgrouptw@gmail.com"]
  s.homepage    = ""
  s.summary     = "PNWEB 的備份 Api."
  s.description = "Description of BackupApi."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.0.2"

  s.add_development_dependency "pg"
end
