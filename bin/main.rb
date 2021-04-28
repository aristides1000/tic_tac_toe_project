#!/usr/bin/env ruby

require_relative '../lib/logic.rb'

puts 'Player 1 name: '
name1 = gets.chomp
while name1.empty?
  puts 'Please, give me your name'
  name1 = gets.chomp
end
puts 'Player 2 name: '
name2 = gets.chomp
while name2.empty?
  puts 'Please, give me your name'
  name2 = gets.chomp
end

player = Player.new(name1, name2)

grid = "+---+---+---+ \n| 1 | 2 | 3 | \n+---+---+---+ \n| 4 | 5 | 6 | \n+---+---+---+ \n| 7 | 8 | 9 | \n+---+---+---+"

puts grid
