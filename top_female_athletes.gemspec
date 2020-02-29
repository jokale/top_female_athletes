
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "top_female_athletes/version"

Gem::Specification.new do |spec|
  spec.name          = "top_female_athletes"
  spec.version       = TopFemaleAthletes::VERSION
  spec.authors       = ["'Joanna E K'"]
  spec.email         = ["'kalemajoanna@gmail.com'"]

  spec.summary       = "A short summary "
  spec.description   = "A longer summary/ description"
  spec.homepage      = "https://github.com/jokale/top_female_athletes"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "http://mygemserver.com"

    spec.metadata["https://github.com/jokale/top_female_athletes"] = spec.homepage
    spec.metadata["source_code_uri"] = "https://github.com/jokale/top_female_athletes"
    spec.metadata["changelog_uri"] = "https://github.com/jokale/top_female_athletes/commits/master"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "pry"

end
