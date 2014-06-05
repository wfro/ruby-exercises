class Pirate

  attr_reader :name, :job

  def initialize(name, job="Scallywag")
    @name = name
    @job = job
    @cursed = false
    @count = 0
  end

  def cursed?
    @cursed
  end

  def commit_heinous_act
    @count += 1
    @cursed = true if @count >= 3
  end

end
