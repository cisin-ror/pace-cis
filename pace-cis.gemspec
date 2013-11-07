Gem::Specification.new do |s|
  s.name        = 'pace-cis'
  s.version     = '0.0.5'
  s.date        = '2010-10-31'
  s.summary     = "Automatic page load progress bar .Include pace.js and a CSS theme of your choice, and you get a beautiful progress indicator for your page load and ajax navigation. No need to hook into any of your code, progress is detected automatically."
  s.description = "Automatic page load progress bar"
  s.authors     = ["Mohan Salvi", "CISROR Team"]
  s.files       = Dir["{lib,app}/**/*", "[A-Z]*"]
  s.homepage    = 'http://rubygems.org/gems/pace-cis'
  s.require_paths = ["lib"]  

  s.license       = 'MIT'
  s.rubyforge_project = "jquery-rails"
  s.required_rubygems_version = ">= 1.3.6"
  s.add_dependency "jquery-rails"
  s.add_dependency "coffee-rails"
  s.add_dependency "railties"

end
