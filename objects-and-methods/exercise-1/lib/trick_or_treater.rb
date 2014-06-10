class TrickOrTreater
  attr_reader :bag

  def initialize(costume)
    @costume = costume
    @bag = Bag.new
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
    bag.candies.pop
  end
end
