Gem::Specification.new do |s|
  s.name        = 'aha-rb'
  s.version     = '0.0.1'
  s.date        = '2015-05-07'
  s.summary     = "Interact with the AHA! API"
  s.description = "A gem for interacting with the AHA! API."
  s.authors     = ["Henry Stanley"]
  s.email       = 'henry@henrystanley.com'
  s.files       = ["lib/aha.rb"]
  s.homepage    = 'https://github.com/henryaj/aha-rb'
  s.license     = 'MIT'
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})
  s.require_paths = ["lib"]

  s.add_dependency 'httparty'

  s.add_development_dependency 'rspec'
  s.add_development_dependency 'rake'
end