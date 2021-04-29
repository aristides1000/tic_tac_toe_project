#!/usr/bin/env ruby
# rubocop: disable Lint/UselessAssignment

require_relative '../lib/player.rb'
require_relative '../lib/rules.rb'
require_relative '../lib/board.rb'

# board layout
arr = [
  [1, 2, 3],
  [4, 5, 6],
  [7, 8, 9]
]

line_separator = ' +---+---+---+ '
line1 = "\n | #{arr[0][0]} | #{arr[0][1]} | #{arr[0][2]} | \n"
line2 = "\n | #{arr[1][0]} | #{arr[1][1]} | #{arr[1][2]} | \n"
line3 = "\n | #{arr[2][0]} | #{arr[2][1]} | #{arr[2][2]} | \n"
grid = line_separator + line1 + line_separator + line2 + line_separator + line3 + line_separator
# end of board layout

puts "Welcome to the Tic Tac Toe's Game \n \n"

puts 'Player 1 name: '
name1 = gets.chomp.capitalize!
while name1.empty?
  puts 'Please, give me your name'
  name1 = gets.chomp.capitalize!
end
puts 'Player 2 name: '
name2 = gets.chomp.capitalize!
while name2.empty?
  puts 'Please, give me your name'
  name2 = gets.chomp.capitalize!
end

player1 = Player.new(name1, marker = 'X')
player2 = Player.new(name2, marker = 'O')

system 'clear'
puts grid

puts "#{player1.name} is going to play #{player1.marker} and #{player2.name} will play #{player2.marker}"
sleep(1)
puts "Let's start"
sleep(1)

# initial instructions for player

@array_select_player1 = []
@array_select_player2 = []

@array_winner = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9], [1, 5, 9], [3, 5, 7]]

j = 1

while j < 10
  system 'clear'
  puts grid
  if j.odd?
    puts "It's #{player1.name}'s turn #{player1.marker}\n"
  else
    puts "It's #{player2.name}'s turn #{player2.marker} \n"
  end

  sleep(1)
  puts 'Please select an available cell from the board'
  range = (1..9)

  if j.odd?
    select_player1 = gets.chomp.to_i
    until range.include? select_player1
      puts 'Invalid move, Please select a number between 1 to 9.'
      puts "you put #{select_player1} #{select_player1.class}"
      sleep(1)
      puts 'Please select an available cell from the board'
      select_player1 = gets.chomp.to_i
    end

    while @array_select_player1.include? select_player1 or @array_select_player2.include? select_player1
      puts 'Please Type another number, because this number is already taken'
      sleep(1)
      puts 'Please select an available cell from the board'
      select_player1 = gets.chomp.to_i
    end
    Board.check(arr, select_player1, player1.marker)
    line_separator = ' +---+---+---+ '
    line1 = "\n | #{arr[0][0]} | #{arr[0][1]} | #{arr[0][2]} | \n"
    line2 = "\n | #{arr[1][0]} | #{arr[1][1]} | #{arr[1][2]} | \n"
    line3 = "\n | #{arr[2][0]} | #{arr[2][1]} | #{arr[2][2]} | \n"
    grid = line_separator + line1 + line_separator + line2 + line_separator + line3 + line_separator
    @array_select_player1.push(select_player1)
  else

    select_player2 = gets.chomp.to_i
    until range.include? select_player2
      puts 'Invalid move, Please select a number between 1 to 9.'
      puts "you put #{select_player2} #{select_player2.class}"
      sleep(1)
      puts 'Please select an available cell from the board'
      select_player2 = gets.chomp.to_i
    end

    while @array_select_player1.include? select_player2 or @array_select_player2.include? select_player2
      puts 'Please Type another number, because this number is already taken'
      sleep(1)
      puts 'Please select an available cell from the board'
      select_player2 = gets.chomp.to_i
    end
    Board.check(arr, select_player2, player2.marker)
    line_separator = ' +---+---+---+ '
    line1 = "\n | #{arr[0][0]} | #{arr[0][1]} | #{arr[0][2]} | \n"
    line2 = "\n | #{arr[1][0]} | #{arr[1][1]} | #{arr[1][2]} | \n"
    line3 = "\n | #{arr[2][0]} | #{arr[2][1]} | #{arr[2][2]} | \n"
    grid = line_separator + line1 + line_separator + line2 + line_separator + line3 + line_separator
    @array_select_player2.push(select_player2)
  end

  if @array_select_player1.include? 1 and @array_select_player1.include? 2 and @array_select_player1.include? 3
    puts "#{player1.name} you Win the Game"
    return
  end

  x = 0

  while x < 8
    if @array_select_player1.include? @array_winner[x][0] and
       @array_select_player1.include? @array_winner[x][1] and
       @array_select_player1.include? @array_winner[x][2]
      system 'clear'
      puts grid
      puts "#{player1.name} you Win the Game"
      return
    elsif @array_select_player2.include? @array_winner[x][0] and
          @array_select_player2.include? @array_winner[x][1] and
          @array_select_player2.include? @array_winner[x][2]
      system 'clear'
      puts grid
      puts "#{player2.name} you Win the Game"
      return
    end

    x += 1
  end

  j += 1

  next unless j == 10

  system 'clear'
  puts grid
  puts "It's a TIE \n \n Game over"
  return
 
end

# rubocop: enable Lint/UselessAssignment
