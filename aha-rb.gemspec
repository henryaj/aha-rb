Gem::Specification.new do |s|
  s.name        = 'aha-rb'
  s.version     = '0.0.1'
  s.date        = '2015-05-07'
  s.summary     = "Interact with the AHA! API"
  s.description = "A gem for interacting with the AHA! API."
  s.authors     = ["Henry Stanley"]
  s.email       = 'henry@henrystanley.com'
  s.files       = ["lib/aha.rb"]
  s.homepage    = ''
  s.license     = 'MIT'
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'httparty'

  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rake'
end