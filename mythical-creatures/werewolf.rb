class Werewolf

  attr_reader :name, :location

  def initialize(name, location="London")
    @name = name
    @location = location
    @human = true
  end

  def human?
    @human
  end

  def werewolf?
    @human == false
  end

  def change!
    if @human == true
      @human = false
    else
      @human = true
    end
  end

end
