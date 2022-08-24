$LOAD_PATH.unshift(File.expand_path('../lib', __dir__))

require 'simplecov'

SimpleCov.start

if ENV['CI'] == 'true'
  require 'codecov'
  SimpleCov.formatter = SimpleCov::Formatter::Codecov
end

module SpecHelper
end

require 'fastlane'
require 'fastlane/plugin/mint'
require 'action_runner'

Fastlane.load_actions
