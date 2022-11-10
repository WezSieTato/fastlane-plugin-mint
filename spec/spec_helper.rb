$LOAD_PATH.unshift(File.expand_path('../lib', __dir__))

require 'simplecov'

SimpleCov.start

require 'simplecov-cobertura'
SimpleCov.formatter = SimpleCov::Formatter::CoberturaFormatter

module SpecHelper
end

require 'fastlane'
require 'fastlane/plugin/mint'
require 'action_runner'

Fastlane.load_actions
