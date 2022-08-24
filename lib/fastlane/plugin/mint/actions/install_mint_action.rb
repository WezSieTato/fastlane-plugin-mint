require 'fastlane'

module Fastlane
  module Actions
    class InstallMintAction < Action
      def self.run(params)
        Actions.sh("brew install mint")
      end

      def self.description
        "Install mint using homebrew"
      end

      def self.example_code
        [
          'install_mint'
        ]
      end

      def self.authors
        ["Marcin Stepnowski"]
      end

      def self.is_supported?(platform)
        [:ios, :mac].include?(platform)
      end

      def self.category
        :building
      end
    end
  end
end
