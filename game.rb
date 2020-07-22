class Player
  attr_accessor :name, :score
  def initialize(name)
    @name = name
    @score = 3
  end
end

class Question
  attr_accessor :true_false
  def initialize
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
    puts '----------start game-----------'
  end

  def start_game
    counter = 0
    while player_one.score.positive? && player_two.score.positive?
      player = counter % 2 == 0? @player_one : @player_two
      other_player = counter % 2 == 1? @player_one : @player_two
      puts "Question for #{player.name}"
      question = Question.new
      if !question.true_false
        player.score += -1
      end
      if player.score.positive?
        puts "#{player.name} has a score of #{player.score}/3"
        puts "#{other_player.name} has a score of #{other_player.score}/3"
        puts '-----------new turn-----------------'
        counter += 1
      else
        puts "#{player.name} loses\n#{other_player.name} wins with a score of #{other_player.score}/3"
        puts '---------GAME OVER-----------'
        puts 'Goodbye!'
      end
    end
  end
end

p = Game.new
p.start_game