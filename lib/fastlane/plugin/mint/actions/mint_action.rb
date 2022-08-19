require 'fastlane/action'
require_relative '../helper/mint_helper'

module Fastlane
  module Actions
    class MintAction < Action
      def self.run(params)
        UI.message("The mint plugin is working!")
      end

      def self.description
        "Run Mint with fastlane! Mint is a package manager that installs and runs Swift command line tool packages."
      end

      def self.authors
        ["Marcin Stepnowski"]
      end

      def self.return_value
        # If your method provides a return value, you can describe here what it does
      end

      def self.details
        # Optional:
        "Mint is designed to be used with Swift command line tools that build with the Swift Package Manager. It makes installing, running and distributing these tools much easier."
      end

      def self.available_options
        [
          # FastlaneCore::ConfigItem.new(key: :your_option,
          #                         env_name: "MINT_YOUR_OPTION",
          #                      description: "A description of your option",
          #                         optional: false,
          #                             type: String)
        ]
      end

      def self.is_supported?(platform)
        # Adjust this if your plugin only works for a particular platform (iOS vs. Android, for example)
        # See: https://docs.fastlane.tools/advanced/#control-configuration-by-lane-and-by-platform
        #
        # [:ios, :mac, :android].include?(platform)
        true
      end
    end
  end
end
