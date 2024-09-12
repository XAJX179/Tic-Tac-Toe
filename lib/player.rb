# frozen_string_literal: true

# Player class for creating players object
class Player
  private

  def initialize(sign)
    puts 'Enter a name : '
    @name = gets.chomp
    @sign = sign
  end

  public

  attr_reader :sign, :name

  def input
    puts "#{@name}'s turn (you are #{@sign}): "
    gets[0].to_i
  end

  def won
    puts "#{@name} won!!! ヾ(⌐■_■)ノ"
  end
end
