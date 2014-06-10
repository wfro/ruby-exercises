class Pheonix
  attr_reader :name
  def initialize(name)
    @name = name
    @is_alive = true
  end

  def alive?
    @is_alive
  end

  def kill
    @is_alive = false if @is_alive
  end

  def rebirth
    @is_alive = true if !@is_alive
  end
end
