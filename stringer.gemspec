# frozen_string_literal: true

require_relative "lib/stringer/version"

Gem::Specification.new do |spec|
  spec.name = "stringer"
  spec.version = Stringer::VERSION
  spec.authors = ["E-ringz"]
  spec.email = ["ron.garcia.santos@gmail.com"]

  # spec.summary = "TODO: Write a short summary, because RubyGems requires one."
  spec.summary = "This is simple gem that will help us wxtend the functionality of strings"
  # spec.description = "TODO: Write a longer description or delete this line."
  spec.description = "This is to enhancement for ruby on rails development"
  spec.homepage = "https://github.com/Eringz/Eringz"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = "TODO: Set to your gem server 'https://example.com'"


  spec.metadata["homepage_uri"] = spec.homepage
  # spec.metadata["source_code_uri"] = "TODO: Put your gem's public repo URL here."
  # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."


  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"
  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  # spec.add_dependency "<some_other_gem>"
  spec.add_development_dependency "rspec"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
