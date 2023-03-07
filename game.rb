class Game

  attr_accessor :name, :lives

  def initialize(name1, name2)
    @name1 = name1
    @name2 = name2
    @lives1 = 3
    @lives2 = 3
    @current_player = name1
    puts "---#{@name1} & #{@name2}, welcome to the game!---"
  end

  def update_lives(current_player)
    if current_player == @name1
      @lives1 -= 1
      if @lives1 == 0
        game_over(@name2, @lives2)
      end
    else
      @lives2 -= 1
      if @lives2 == 0
        game_over(@name1, @lives1)
      end
    end
  end

  def game_over(winner_name, winner_lives)
    puts "#{winner_name} wins with a score of #{winner_lives}/3"
    puts "--- GAME OVER ---"
    puts "Good bye!"
    exit(0)
  end

  def update_name()
    if @current_player == @name1
      @current_player = @name2
    else
      @current_player = @name1
    end
    self.start
  end

  def to_s
    "Player #{@name1} has #{@lives1} lives left.\nPlayer #{@name2} has #{@lives2} lives left."
  end

  def start
    puts "********************************"
    puts self
    question = Question.new(@current_player)

    if !question.Start
      update_lives(@current_player)
    end 

    update_name()
  end

end