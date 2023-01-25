lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fastlane/plugin/mint/version'

Gem::Specification.new do |spec|
  spec.name          = 'fastlane-plugin-mint'
  spec.version       = Fastlane::Mint::VERSION
  spec.author        = 'Marcin Stepnowski'
  spec.email         = 'marcin.stepnowski@gmail.com'

  spec.summary       = 'Run Mint with fastlane! Mint is a package manager that installs and runs Swift command line tool packages.'
  spec.homepage      = "https://github.com/WezSieTato/fastlane-plugin-mint"
  spec.license       = "MIT"

  spec.files         = Dir["lib/**/*"] + %w(README.md LICENSE)
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 2.5'

  spec.add_development_dependency('bundler')
  spec.add_development_dependency('fastlane', '>= 2.209.0')
  spec.add_development_dependency('pry')
  spec.add_development_dependency('rake')
  spec.add_development_dependency('rspec')
  spec.add_development_dependency('rspec_junit_formatter')
  spec.add_development_dependency('rubocop', '1.44.1')
  spec.add_development_dependency('rubocop-performance')
  spec.add_development_dependency('rubocop-require_tools')
  spec.add_development_dependency('simplecov')
  spec.add_development_dependency('simplecov-cobertura')
  spec.metadata['rubygems_mfa_required'] = 'true'
end
