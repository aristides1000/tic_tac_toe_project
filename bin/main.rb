#!/usr/bin/env ruby

require_relative '../lib/logic.rb'

puts "Welcome to the Tic Tac Toe's Game \n \n"

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

system 'clear'
puts grid

puts "#{player.name1} is going to play X and #{player.name2} will play 0"
sleep(1)
puts "Let's start"
sleep(2)

game_on = true

# initial instructions for player

@array_select_player1 = []
@array_select_player2 = []

@array_winner1 = [1, 2, 3]
@array_winner2 = [4, 5, 6]
@array_winner3 = [7, 8, 9]
@array_winner4 = [1, 4, 7]
@array_winner5 = [2, 5, 8]
@array_winner6 = [3, 6, 9]
@array_winner7 = [1, 5, 9]
@array_winner8 = [3, 5, 7]

j = 1

while j < 10
  system 'clear'
  puts grid

  if j.odd?
    puts "It's #{player.name1}'s turn \n"
  else
    puts "It's #{player.name2}'s turn \n"
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
      puts "Please Type another number, because this number is already taken"
      sleep(1)
      puts 'Please select an available cell from the board'
      select_player1 = gets.chomp.to_i
    end

    @array_select_player1.push(select_player1)
    p @array_select_player1
    sleep(1)
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
      puts "Please Type another number, because this number is already taken"
      sleep(1)
      puts 'Please select an available cell from the board'
      select_player2 = gets.chomp.to_i
    end

    @array_select_player2.push(select_player2)
    p @array_select_player2
    sleep(1)
  end

  if @array_select_player1.include? 1 and @array_select_player1.include? 2 and @array_select_player1.include? 3
    puts "#{player.name1} you Win the Game"
    return
  end

  array1 = [1, 4, 8, 9]
  array2 = 1

  p array1.include? array2
  sleep(1)
=begin
  if @array_select_player1.all? @array_winner1 or @array_select_player1.all? @array_winner2 or @array_select_player1.all? @array_winner3 or @array_select_player1.all? @array_winner4 or @array_select_player1.all? @array_winner5 or @array_select_player1.include? @array_winner6 or @array_select_player1.include? @array_winner7 or @array_select_player1.include? @array_winner8
    puts "#{player.name1} you Win the Game"
    return
  elsif @array_select_player2.include? @array_winner1 or @array_select_player2.include? @array_winner2 or @array_select_player2.include? @array_winner3 or @array_select_player2.include? @array_winner4 or @array_select_player2.include? @array_winner5 or @array_select_player2.include? @array_winner6 or @array_select_player2.include? @array_winner7 or @array_select_player2.include? @array_winner8
    puts "#{player.name2} you Win the Game"
    return
  end
=end

  j += 1

  if j == 10
    puts "It's a TIE \n \n Game over"
    return
  end

end

rules = Rules.new(select_player1, select_player2)

=begin
puts "#{player.name1} you Win the Game"
puts "#{player.name2} you Win the Game"
puts "It's a TIE \n \n Game over"
=end
