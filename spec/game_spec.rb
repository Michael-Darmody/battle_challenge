require 'game'

describe Game do
  let(:subject) { described_class.new(player_1, player_2) }
  let(:finished_game) { described_class.new(losing_player, player_2) }
  let(:player_1) { double :mike, hit_points: 100 }
  let(:player_2) { double :mark, hit_points: 100 }
  let(:losing_player) { double :player, hit_points: 0 }

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

  describe '#current_turn' do
    it 'starts a player 1' do
      expect(subject.current_turn).to eq(player_1)
    end
  end

  describe '#switch' do
    it 'finds the opponent of a player' do
      expect(subject.switch(player_1)).to eq player_2
      expect(subject.switch(player_2)).to eq player_1
    end
  end

  describe 'switch_turn' do
    it 'switches to the opposing players turn' do
      subject.switch_turn
      expect(subject.current_turn).to eq(player_2)
    end
  end

  describe '#game_over?' do
    it 'returns false if no-one is at 0HP' do
      expect(subject.game_over?).to be_falsey
    end

    it 'returns true if at least one player is at 0HP' do
      expect(finished_game.game_over?).to be_truthy
    end
  end

  describe '#loser' do
    it 'returns a player on less than 0HP' do
      expect(finished_game.loser).to eq(losing_player)
    end
  end
end
