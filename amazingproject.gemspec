require_relative 'lib/amazingproject/version'

Gem::Specification.new do |spec|
  spec.name          = "amazingproject"
  spec.version       = Amazingproject::VERSION
  spec.authors       = ["LitatyHQ"]
  spec.email         = ["litatyHQ@gmail.com"]

  spec.summary       = %q{ This will allow fans to take a look into their favorite films. }
  spec.description   = %q{ This will allow fans to take a look into their favorite films. }
  spec.homepage      = "https://github.com/LitatyHQ/amazingproject.git"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/LitatyHQ/amazingproject.git"
  spec.metadata["changelog_uri"] = "https://github.com/LitatyHQ/amazingproject.git"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "rest-client"

end
