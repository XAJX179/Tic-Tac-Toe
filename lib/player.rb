# Player class for creating players object
class Player
  private

  def initialize
    puts "Enter a name : "
    @name = gets.chomp
  end

  public

  def input
    puts "#{@name}'s turn : "
    gets.chars.first.to_i
  end

  def won
    puts "#{@name} won!!!"
  end
end
