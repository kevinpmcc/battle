class Player

  attr_reader :name, :hp

  def initialize(name)
    @name = name
    @hp = 100
  end

  def reduce_hp
    @hp -= 40
  end

end
