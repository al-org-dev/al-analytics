Gem::Specification.new do |spec|
  spec.name          = "al_analytics"
  spec.version       = "0.1.0"
  spec.authors       = ["al-org"]
  spec.email         = ["dev@al-org.com"]
  spec.summary       = "al-folio plugin for various analytics integrations"
  spec.description   = "al-folio plugin that provides integrations with Google Analytics, Cronitor Analytics, Pirsch Analytics, and OpenPanel Analytics"
  spec.homepage      = "https://github.com/al-org-dev/al-analytics"
  spec.license       = "MIT"

  spec.files         = Dir["lib/**/*"]
  spec.require_paths = ["lib"]

  spec.add_dependency "jekyll", ">= 3.0"
  spec.add_dependency "liquid", ">= 4.0"

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 13.0"
end