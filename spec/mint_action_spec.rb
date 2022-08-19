describe Fastlane::Actions::MintAction do
  describe '#run' do
    it 'prints a message' do
      expect(Fastlane::UI).to receive(:message).with("The mint plugin is working!")

      Fastlane::Actions::MintAction.run(nil)
    end
  end
end
