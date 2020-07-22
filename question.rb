class Question
  attr_accessor :true_false, :question, :num_one, :num_two
  def initialize
    @num_one = rand(20)
    @num_two = rand(20)
    @question = "#{@num_one} + #{@num_two} = ?"
  end
  def question_correct?(answer)
    if answer.to_i == @num_one + @num_two
      puts 'Correct'
      @true_false = true
    else
      puts 'Wrong'
      @true_false = false
    end
  end
end