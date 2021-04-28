#!/usr/bin/env ruby

require '../lib/logic.rb'

puts 'Player 1 name: '
name1 = gets.chomp

puts 'Player 2 name: '
name2 = gets.chomp

puts Game.start
