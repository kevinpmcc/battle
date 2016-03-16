class Player
  attr_reader :name, :hp
  DEFAULT_HP = 60

  def initialize(name)
    @name = name
    @hp = DEFAULT_HP
  end

  def receive_attack
    @hp -= 6
  end

  # def attack opponent
  #   opponent.receive_attack
  # end
end
