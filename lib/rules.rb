# rubocop:disable Metrics/MethodLength
# rubocop:disable Metrics/CyclomaticComplexity
# rubocop:disable Metrics/PerceivedComplexity

class Rules
  def self.win(array_select_player1, array_select_player2, array_winner, string1, string2)
    x = 0

    attr_accessor :array_select_player1, :array_select_player2, :array_winner, :string1, :string2

    @array_select_player1 = array_select_player1
    @array_select_player2 = array_select_player2
    @array_winner = array_winner
    @string1 = string1
    @string2 = string2

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

# rubocop:enable Metrics/MethodLength
# rubocop:enable Metrics/CyclomaticComplexity
# rubocop:enable Metrics/PerceivedComplexity
