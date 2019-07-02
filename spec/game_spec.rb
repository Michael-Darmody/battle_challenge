require 'game'

describe Game do
  let(:subject) { described_class.new }
  let(:player_1) { double(:mike) }
  let(:player_2) { double(:mark) }

  describe '#attack' do
    it 'attacks the opposing player' do
      expect(player_2).to receive(:receive_damage)
      subject.attack(player_2)
    end
  end
end
