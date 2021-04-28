#!/usr/bin/env ruby

# puts 'Hello World!'
module Game

    def self.start
      system "clear"
      arr = [
      [1,2,3],
      [4,5,6],
      [7,8,9]
      ]

      board = "+---+---+---+ \n| #{arr[0][0]} | #{arr[0][1]} | #{arr[0][2]} |\n+---+---+---+ \n| #{arr[1][0]} | #{arr[1][1]} | #{arr[1][2]} |\n+---+---+---+ \n| #{arr[2][0]} | #{arr[2][1]} | #{arr[2][2]} |\n+---+---+---+ "
      puts board
    end
  end
  
  # Players class
  class Player
    include Game
    attr_accessor :name
  
    def initialize
      puts "Player 1 name: "
      @name1 = gets.chomp  
      puts "Player 2 name: "
      @name2 = gets.chomp
    end

    def name1
        @name1
    end

    def name2
        @name2
    end
  end
  
  clear =->{
    system "clear"
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
  puts "Please select an available cell from the board"
  select_player1 = gets.chomp
  range = (1..9)
  while select_player1 != range
    puts "Invalid move, Please select a number between 1 to 9."
    sleep(1)
    p select_player1
    select_player1 = gets.chomp.to_i
    p select_player1
  end
  clear.call
  Game.start
  puts "It's #{player.name2}'s turn \n"
  sleep(1)
  puts "Please select an available cell from the board"
  select_player2 = gets.chomp
  range = (1..9)
  while select_player2 != range
    puts "Invalid move, Please select a number between 1 to 9."
    sleep(1)
    select_player2 = gets.chomp
  end
  clear.call
  Game.start
