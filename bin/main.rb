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
  
  
  
  player = Player.new
  Game.start
  
  puts "#{player.name1} is going to play X and #{player.name2} will play 0"
    