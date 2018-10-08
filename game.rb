class Game
  attr_accessor:number1
  attr_accessor:number2

  def initialize(p1,p2)
    @active_player = p1
    @number1 = Random.rand(1...20)
    @number2 = Random.rand(1...20)
    @p1 = p1
    @p2 = p2
  end

  def change_turn
    if @active_player == @p1
      @active_player = @p2
    else
      @active_player = @p1
    end

    return @active_player
  end

  def ask_question
    while @active_player.lives > 0
      answer = @number1 + @number2
      puts "what is #{number1} + #{number2}?"
      user_answer = gets.chomp.to_i

      if answer == user_answer
        puts "Correct"
        puts "#{@active_player.name} has #{@active_player.lives} lives left."
      else
        puts "Wrong"
        @active_player.reduce_life
        puts "#{@active_player.name} has #{@active_player.lives} lives left."
      end

      if @active_player.lives == 0
        puts "#{@active_player.name} lost!"
        return
      end
      change_turn
      @number1 = Random.rand(1...20)
      @number2 = Random.rand(1...20)

    end

  end

end