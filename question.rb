class Question
  attr_accessor :true_false, :question, :num_one, :num_two
  def initialize
    @num_one = rand(20)
    @num_two = rand(20)
    @question = "#{@num_one} + #{@num_two} = ?"
  end
end