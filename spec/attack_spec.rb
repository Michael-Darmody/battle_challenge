require 'attack'

describe Attack do
  let(:subject) { described_class }
  let(:player) { double :player }

  describe '#run' do
    it 'damages the player' do
      expect(player).to receive(:receive_damage)
      subject.run(player)
    end
  end
end
