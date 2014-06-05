class Centaur

  attr_reader :name, :breed

  def initialize(name, breed="Palomino")
    @name = name
    @breed = breed
    @is_cranky = false
    @is_standing = true
    @count = 0
  end

  def shoot
    @count += 1

    if cranky?
      "NO!"
    else
      "Twang!!!"
    end
  end

  def run
    @count += 1

    if cranky?
      "NO!"
    else
      "Clop clop clop clop!!!"
    end
  end

  def sleep
    "NO!" if standing?``
  end

  def cranky?
    @is_cranky = true if @count >= 3
  end

  def standing?
    @is_standing
  end

end
