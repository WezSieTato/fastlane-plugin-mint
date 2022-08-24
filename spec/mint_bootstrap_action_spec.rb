describe Fastlane::Actions::MintBootstrapAction do
  describe 'Mint bootstrap action should run' do
    it 'without parameter' do
      expect(Fastlane::Actions).to receive(:sh).with("mint bootstrap")

      ActionRunner.bootstrap("")
    end

    it 'when link parameter is true' do
      expect(Fastlane::Actions).to receive(:sh).with("mint bootstrap --link")

      ActionRunner.bootstrap("link: true")
    end

    it 'when link parameter is false' do
      expect(Fastlane::Actions).to receive(:sh).with("mint bootstrap")

      ActionRunner.bootstrap("link: false")
    end
  end
end
