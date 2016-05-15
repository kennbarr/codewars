class Guesser
  def initialize(number, lives)
    @number = number
    @lives = lives
  end
  
  def guess(n)
    if @lives == 0
      raise "Omae wa mo shindeiru"
    elsif n == @number
      return true
    else
      @lives -=1
      return false
    end
  end
end