require 'fastlane'

module Fastlane
  module Actions
    class MintWhichAction < Action
      def self.run(params)
        require 'shellwords'

        cmd = ["mint", "which", params[:package]]
        Actions.sh(Shellwords.join(cmd)).chop
      end

      def self.description
        "Print and return the full path to the installed executable"
      end

      def self.example_code
        [
          '
          executable_path = mint_which(package: "swiftlint")
          swiftlint(executable: executable_path)
          ',
          'mint_which(package: sourcery)'
        ]
      end

      def self.authors
        ["Marcin Stepnowski"]
      end

      def self.available_options
        [
          FastlaneCore::ConfigItem.new(key: :package,
                                       env_name: "MINT_BOOTSTRAP_PACKAGE",
                                       description:
        'The package can be a shorthand for a github repo "githubName/repo", or a fully qualified .git path.
 An optional version can be specified by appending @version to the repo, otherwise the newest tag
 will be used (or master if no tags are found.)',
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
