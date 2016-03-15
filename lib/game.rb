class Game
  def initialize(player_class)
    @player_class = player_class
  end

  def add_player_1(name)
    @player_1 = @player_class.new(name)
  end

  def add_player_2(name)
    @player_2 = @player_class.new(name)
  end

  def attack(player)
    player.receive_attack
  end
end
