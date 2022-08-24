describe Fastlane::Actions::MintWhichAction do
  describe 'Mint which action test' do
    it 'when package is swiftlint' do
      expect(Fastlane::Actions)
        .to receive(:sh)
        .with("mint which swiftlint")
        .and_return("/superuser/mint/swiftlint\n")

      output = ActionRunner.which('package: "swiftlint"')

      expect(output).to eq('/superuser/mint/swiftlint')
    end

    it 'when package is swiftformat' do
      expect(Fastlane::Actions)
        .to receive(:sh)
        .with("mint which swiftformat")
        .and_return("/superuser/mint/swiftformat\n")

      output = ActionRunner.which('package: "swiftformat"')

      expect(output).to eq('/superuser/mint/swiftformat')
    end
  end
end
