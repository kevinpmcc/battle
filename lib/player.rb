class Player
  attr_reader :name, :hp
  DEFAULT_HP = 60
  ATTACK_STRENGTH = 6

  def initialize(name)
    @name = name
    @hp = DEFAULT_HP
  end

  def receive_attack
    @hp < ATTACK_STRENGTH ? (@hp = 0) : (@hp -= ATTACK_STRENGTH) 
  end
  
  def loser?
    @hp <= 0
  end
end
