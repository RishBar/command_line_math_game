class Player
  attr_accessor :name, :score
  def initialize(name)
    @name = name
    @score = 3
  end
end

class Question
  attr_accessor :true_false
  def initialize()
    num_one = rand(20)
    num_two = rand(20)
    puts "#{num_one} + #{num_two} = ?"
    if gets.chomp.to_i == num_one + num_two
      puts 'Correct'
      @true_false = true
    else
      puts 'Wrong'
      @true_false = false
    end
  end
end

class Game
  attr_accessor :player_one, :player_two
  def initialize()
    puts 'Player 1 name?'
    @player_one = Player.new(gets.chomp)
    puts 'Player 2 name?'
    @player_two = Player.new(gets.chomp)
  end

  def start_game()
    counter = 0
    while player_one.score.positive? && player_two.positive?
      player = counter % 2 == 0? @player_one : @player_two
      puts "Question for #{player.name}"
      question = Question.new
      counter += 1
    end
  end
end

p = Game.new()
p.start_game