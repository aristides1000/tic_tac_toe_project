# rubocop: disable Layout/LineLength

# Players class
class Player
  include Game
  attr_reader :name, :marker

  def initialize(name, marker)
    @name = name
    @marker = marker
  end
end

class Rules
  include Game
  attr_writer :select_player1, :select_player2

  def initialize(select_player1, select_player2)
    @select_player1 = select_player1
    @select_player2 = select_player2
  end
end

class Board
  def self.check(arr, answer, marker)
    arr.each do |item|
      item.each_with_index do |_num, idx|
        item[idx] = marker if answer == item[idx]
      end
    end
    arr
  end
end

# rubocop: enable Layout/LineLength
