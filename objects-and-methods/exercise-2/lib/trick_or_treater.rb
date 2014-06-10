class TrickOrTreater
  attr_reader :bag, :sugar_level

  def initialize(costume)
    @costume = costume
    @bag = Bag.new
    @sugar_level = 0
  end

  def dressed_up_as
    @costume.style
  end

  def has_candy?
    !bag.empty? # return true if empty? returns false
  end

  def candy_count
    bag.count
  end

  def eat
    @sugar_level += bag.candies[-1].sugar
    bag.candies.pop
  end
end
