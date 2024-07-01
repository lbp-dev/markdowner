require_relative "lib/markdowner/version"

Gem::Specification.new do |spec|
  spec.name = "markdowner"
  spec.version = Markdowner::VERSION
  spec.authors = ["elpdev"]
  spec.email = ["148717241+elpdev@users.noreply.github.com"]
  spec.homepage = "https://github.com/lbp-dev/markdowner"
  spec.summary = "Enable markdown files in your app/views/ directory."
  spec.description = spec.summary
  spec.license = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  # spec.metadata["allowed_push_host"] = "Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = spec.homepage + "/CHANGELOG.md"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib,vendor}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", "~> 7.1", ">= 7.1.3.4"
  spec.add_dependency "redcarpet", "~> 3.6"
end
