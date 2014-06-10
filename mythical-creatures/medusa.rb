class Medusa
  attr_reader :name, :statues

  def initialize(name)
    @name = name
    @statues = []
  end

  def stare(victim)
    @statues << victim
    victim.is_stone = true
  end

  def off_with_her_head
    
  end
end


class Person
  attr_reader :name
  attr_accessor :is_stone

  def initialize(name)
    @name = name
    @is_stone = false
  end

  def stoned?
    @is_stone
  end
end
