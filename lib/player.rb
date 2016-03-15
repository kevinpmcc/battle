class Player

  attr_reader :name, :hit_points

  def initialize(name)
    @name = name
    @hit_points = 10
  end

  def receive_attack
    @hit_points -= 1
  end

end
