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