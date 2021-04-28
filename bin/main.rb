#!/usr/bin/env ruby

puts 'Hello World!'
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
    attr_accessor :name, :symbol
  
    def initialize
      puts "Player name: "
      @name = gets.chomp
      puts "Select your marker: "
      @symbol = gets.chomp
    end
  end
  
  
  
  player1 = Player.new
  player2 = Player.new
  Game.start
  
  puts "#{player1.name} is your turn, select one of the numbers above to place your marker: "
  
  answer = gets.chomp
  