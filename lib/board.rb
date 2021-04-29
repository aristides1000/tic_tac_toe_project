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
