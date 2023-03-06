class Players 

  attr_accessor :name, :lives

  def initialize(name)
    @name = name
    @lives = 3
  end

  def to_s
    "Player #{@name} has #{@lives} lives left."
  end

end