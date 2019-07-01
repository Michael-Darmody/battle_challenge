require 'player'

describe Player do
  let(:subject) { described_class.new('Mike') }

  describe '#name' do
    it 'returns the player name' do
      expect(subject.name).to eq('Mike')
    end
  end
end
