module Game
  def self.start
    arr = [
      [1, 2, 3],
      [4, 5, 6],
      [7, 8, 9]
    ]

    grid = "+---+---+---+ \n | #{arr[0][0]} | #{arr[0][1]} | #{arr[0][2]} | \n +---+---+---+ \n | #{arr[1][0]} | #{arr[1][1]} | #{arr[1][2]} | \n +---+---+---+ \n | #{arr[2][0]} | #{arr[2][1]} | #{arr[2][2]} | \n +---+---+---+"
  end
end

# Players class
class Player
  include Game
  attr_reader :name1, :name2

  def initialize(name1, name2)
    @name1 = name1
    @name2 = name2
  end
end

class Rules
  include Game
  attr_writer :select_player1, :select_player2

  def initialize(select_player1, select_player2)
    @select_player1 = select_player1
    @select_player2 = select_player2
  end

  def iterations

    game_on = true

  end
end