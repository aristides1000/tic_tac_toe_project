#!/usr/bin/env ruby

# puts 'Hello World!'
module Game
  def self.start
    system 'clear'
    arr = [
      [1, 2, 3],
      [4, 5, 6],
      [7, 8, 9]
    ]

    puts '+---+---+---+'
    puts "| #{arr[0][0]} | #{arr[0][1]} | #{arr[0][2]} |"
    puts '+---+---+---+'
    puts "| #{arr[1][0]} | #{arr[1][1]} | #{arr[1][2]} |"
    puts '+---+---+---+'
    puts "| #{arr[2][0]} | #{arr[2][1]} | #{arr[2][2]} |"
    puts '+---+---+---+'
  end
end

# Players class
class Player
  include Game
  attr_accessor :name

  def initialize
    puts 'Player 1 name: '
    @name1 = gets.chomp
    puts 'Player 2 name: '
    @name2 = gets.chomp
  end

  attr_reader :name1, :name2
end

clear = lambda {
  system 'clear'
}

player = Player.new
Game.start

puts "#{player.name1} is going to play X and #{player.name2} will play 0"
sleep(1)
puts "Let's start"
sleep(2)
clear.call
Game.start
puts "It's #{player.name1}'s turn \n"
sleep(1)
puts 'Please select an available cell from the board'
range = (1..9)
select_player1 = gets.chomp.to_i
until range.include? select_player1
  puts 'Invalid move, Please select a number between 1 to 9.'
  puts "you put #{select_player1} #{select_player1.class}"
  sleep(1)
  puts 'Please select an available cell from the board'
  select_player1 = gets.chomp.to_i
end
clear.call
Game.start
puts "It's #{player.name2}'s turn \n"
sleep(1)
puts 'Please select an available cell from the board'
range = (1..9)
select_player2 = gets.chomp.to_i
until range.include? select_player2
  sleep(1)
  puts 'Please select an available cell from the board'
  select_player2 = gets.chomp.to_i
end
clear.call
Game.start
