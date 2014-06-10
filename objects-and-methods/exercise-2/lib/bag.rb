class Bag
  attr_reader :candies

  def initialize
    @candies = []
  end

  def empty?
    @candies.empty?
  end

  def count
    @candies.length
  end

  def <<(candy)
    @candies << candy
  end

  def contains?(type)
    @candies.any? do |candy|
      candy.type == type
    end
  end

  def grab(candy)
    types = []
    @candies.each do |item|
      types << item.type
    end
    @candies.delete_at(types.find_index(candy))
  end

  def take(num_candy)
    @candies.pop(num_candy)
  end
end
