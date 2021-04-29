class Rules
  attr_writer :select_player1, :select_player2

  def initialize(select_player1, select_player2)
    @select_player1 = select_player1
    @select_player2 = select_player2
  end
end
