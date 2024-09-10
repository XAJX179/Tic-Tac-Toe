# Player class for creating players object
class Player
  private

  def initialize(sign)
    puts "Enter a name : "
    @name = gets.chomp
    @sign = sign
  end

  public

  attr_reader :sign

  def input
    puts "#{@name}'s turn (you are #{@sign}): "
    gets.chars.first.to_i
  end

  def won
    puts "#{@name} won!!!"
  end
end
