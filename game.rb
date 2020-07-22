require './player'
require './question'
class Game
  attr_accessor :player_one, :player_two
  def initialize
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
      puts question.question
      if gets.chomp.to_i == question.num_one + question.num_two
        puts 'Correct'
        question.true_false = true
      else
        puts 'Wrong'
        question.true_false = false
      end
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