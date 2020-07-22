class Player
  attr_accessor :name, :score
  def initialize(name)
    @name = name
    @score = 3
  end
end

class Game
  attr_accessor :name
  def initialize()
    puts 'Player 1 name?'
    player_one = Player.new(gets.chomp)
  end
end

p = Game.new()