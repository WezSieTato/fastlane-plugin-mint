describe Fastlane::Actions::InstallMintAction do
  describe 'Install Mint action' do
    it 'should run brew' do
      expect(Fastlane::Actions)
        .to receive(:sh)
        .with("brew install mint")

      ActionRunner.install_mint
    end
  end
end
