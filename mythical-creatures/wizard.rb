class Wizard

  attr_reader :name

  def initialize(name, bearded: true) # ask
    @name = name
    @bearded = bearded
  end

  def bearded?
    #why method for bearded and not name
    @bearded
  end

  def incantation(spell)
    "sudo #{spell}"
  end
end
