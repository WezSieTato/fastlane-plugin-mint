require 'fastlane'

module Fastlane
  module Actions
    class MintRunAction < Action
      def self.run(params)
        Actions.sh("mint run #{params[:command]}")
      end

      def self.description
        "Run command with mint"
      end

      def self.example_code
        [
          'mint_run(command: "swiftgen")',
          'mint_run(command: "swiftformat .")'
        ]
      end

      def self.authors
        ["Marcin Stepnowski"]
      end

      def self.available_options
        [
          FastlaneCore::ConfigItem.new(key: :command,
                                       env_name: "MINT_RUN_COMMAND",
                                       description: 'The command that will be run by mint',
                                       optional: false,
                                       type: String)
        ]
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
