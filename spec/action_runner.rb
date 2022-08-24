module ActionRunner
  def self.bootstrap(string_params)
    run_action("mint_bootstrap", string_params)
  end

  def self.run_action(name, string_params)
    Fastlane::FastFile.new.parse("
      lane :test do
        #{name}(#{string_params})
      end
      ").runner.execute(:test)
  end
end
