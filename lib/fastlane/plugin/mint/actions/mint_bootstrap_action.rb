require 'fastlane'

module Fastlane
  module Actions
    class MintBootstrapAction < Action
      def self.run(params)
        require 'shellwords'

        cmd = ["mint", "bootstrap"]

        cmd << "--link" if params[:link]

        Actions.sh(Shellwords.join(cmd))
      end

      def self.description
        "Installs all the packages in a Mintfile"
      end

      def self.authors
        ["Marcin Stepnowski"]
      end

      def self.available_options
        [
          FastlaneCore::ConfigItem.new(key: :link,
                                  env_name: "MINT_BOOTSTRAP_LINK",
                               description: "Install the packages of the Mintfile globally",
                                  optional: true,
                                      type: Boolean)
        ]
      end

      def self.is_supported?(platform)
        [:ios, :mac].include?(platform)
      end
    end
  end
end
