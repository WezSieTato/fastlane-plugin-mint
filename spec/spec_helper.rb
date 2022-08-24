$LOAD_PATH.unshift(File.expand_path('../lib', __dir__))

require 'simplecov'

SimpleCov.start

module SpecHelper
end

require 'fastlane' # to import the Action super class
require 'fastlane/plugin/mint' # import the actual plugin
require 'action_runner'

Fastlane.load_actions # load other actions (in case your plugin calls other actions or shared values)
