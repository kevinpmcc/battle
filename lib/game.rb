class Game

  attr_reader :player_1, :player_2 

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @player_1_turn = true
  end

 def attack
   player.receive_attack
 end

 def player_1_turn?
   @player_1_turn
 end

 def player
   player_1_turn? ? player_2 : player_1
 end

  def change_turn
    @player_1_turn = !@player_1_turn
  end
end


