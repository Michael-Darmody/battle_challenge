
class Game
  attr_reader :current_turn

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @current_turn = player_1
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def switch_turn
    @current_turn = switch(current_turn)
  end

  def switch(player)
    other_player(player).first
  end

  def game_over?
    losing_player.any?
  end

  def loser
    losing_player.first
  end

  private
  attr_reader :players

  def losing_player
    players.select { |player| player.hit_points <= 0 }
  end

  def other_player(opposing_player)
    players.select { |player| player != opposing_player }
  end
end
