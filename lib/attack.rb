
class Attack
  def initialize(player)
    @player = player
  end

  def self.run(player)
    new(player).run
  end

  def run
    @player.receive_damage(damage_generator)
  end

  private

  def damage_generator
    Kernel.rand(1..10)
  end
end
