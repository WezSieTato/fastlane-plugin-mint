module ActionRunner
  def self.bootstrap(string_params)
    run_action("mint_bootstrap", string_params)
  end

  def self.which(string_params)
    run_action("mint_which", string_params)
  end

  def self.run(string_params)
    run_action("mint_run", string_params)
  end

  def self.install_mint
    run_action("install_mint", "")
  end

  def self.run_action(name, string_params)
    Fastlane::FastFile.new.parse("
      lane :test do
        #{name}(#{string_params})
      end
      ").runner.execute(:test)
  end
end
