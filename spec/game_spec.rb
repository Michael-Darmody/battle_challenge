require 'game'

describe Game do
  let(:subject) { described_class.new(player_1, player_2) }
  let(:player_1) { double(:mike) }
  let(:player_2) { double(:mark) }

  describe '#player_1' do
    it 'retrieves player 1' do
      expect(subject.player_1).to eq(player_1)
    end
  end

  describe '#player_2' do
    it 'retrieves player 2' do
      expect(subject.player_2).to eq(player_2)
    end
  end

  describe '#attack' do
    it 'damages the player' do
      expect(player_2).to receive(:receive_damage)
      subject.attack(player_2)
    end
  end

  describe '#current_turn' do
    it 'starts a player 1' do
      expect(subject.current_turn).to eq(player_1)
    end
  end

  describe 'switch_turn' do
    it 'switches to the opposing players turn' do
      subject.switch_turn
      expect(subject.current_turn).to eq(player_2)
    end
  end
end
