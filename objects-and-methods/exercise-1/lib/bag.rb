class Bag
  attr_reader :candies, :count

  def initialize
    @candies = []
    @count = 0
  end

  def empty?
    @candies.empty?
  end

  def <<(candy)
    @candies << candy
    @count += 1
  end

  def contains?(type)
    @candies.any? do |candy|
      candy.type == type
    end
  end
end
