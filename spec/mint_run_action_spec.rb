describe Fastlane::Actions::MintRunAction do
  describe 'Mint run action test' do
    it 'when command is swiftgen' do
      expect(Fastlane::Actions)
        .to receive(:sh)
        .with("mint run swiftgen")

      ActionRunner.run('command: "swiftgen"')
    end

    it 'when command is swiftformat .' do
      expect(Fastlane::Actions)
        .to receive(:sh)
        .with("mint run swiftformat .")

      ActionRunner.run('command: "swiftformat ."')
    end
  end
end
