require 'player'

describe Player do
  let(:mike) { described_class.new('Mike') }

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

  describe '#receive_damage' do
    it 'damages the opposing player' do
      expect{ mike.receive_damage(10) }.to change{ mike.hit_points }.by(-10)
    end
  end
end
