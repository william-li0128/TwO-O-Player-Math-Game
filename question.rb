class Question

  def initialize(current_player)
    @current_player = current_player
  end

  def Start
    num1 = rand(1..20)
    num2 = rand(1..20)

    puts "--- #{@current_player}'s TURN ---"
    puts "#{@current_player}: What does #{num1} plus #{num2} equal?"
    print ">"
    answer = $stdin.gets.chomp.to_i

    if answer ==  num1 + num2
      puts "#{@current_player}: YES! you are correct."
      return true
    else 
      puts "Seriously? No!"
      return false
    end
  end

end