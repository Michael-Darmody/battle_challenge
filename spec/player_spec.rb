require 'player'

describe Player do
  let(:mike) { described_class.new('Mike') }
  let(:mark) { described_class.new('Mark') }

  describe '#name' do
    it 'returns the player name' do
      expect(mike.name).to eq('Mike')
    end
  end

  describe '#hit_points' do
    it 'returns the players HP' do
      expect(mike.hit_points).to eq(Player::DEFAULT_HP)
    end
  end

  describe '#attack' do
    it 'attacks the opposing player' do
      expect(mark).to receive(:receive_damage)
      mike.attack(mark)
    end
  end

  describe '#receive_damage' do
    it 'damages the opposing player' do
      expect{ mike.receive_damage }.to change{ mike.hit_points }.by(-10)
    end
  end
end
