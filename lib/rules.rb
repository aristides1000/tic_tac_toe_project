class Rules

  def self.win(array_select_player1, array_select_player2, array_winner, string1, string2, win)
    x = 0

    attr_accessor :array_select_player1, :array_select_player2, :array_winner, :string1, :string2, :win

    @array_select_player1 = array_select_player1
    @array_select_player2 = array_select_player2
    @array_winner = array_winner
    @string1 = string1
    @string2 = string2
    @win = win

    while x < 8
      if @array_select_player1.include? @array_winner[x][0] and
         @array_select_player1.include? @array_winner[x][1] and
         @array_select_player1.include? @array_winner[x][2]
        puts @string1
        return true
      elsif @array_select_player2.include? @array_winner[x][0] and
        @array_select_player2.include? @array_winner[x][1] and
        @array_select_player2.include? @array_winner[x][2]
        puts @string2
        return true
      end
      x += 1
    end
  end
end
