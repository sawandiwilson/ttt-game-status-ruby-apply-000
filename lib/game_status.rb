WIN_COMBINATIONS = [[0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]]

def won?(board)
winner = []
empty_board = board.all? {|x| x == " "}
WIN_COMBINATIONS.each do |sub_array|
    if empty_board || full?(board)
      return false
    elsif sub_array.all? { |value| board[value] =="X" } || sub_array.all? { |value| board[value] =="O" }
      winner = sub_array
      winner
    end
board = ["X", "X", "X", "O", " ", "O", "O", " ", " "]
  end
end

def full?(board)
  !board.any? { |x| x == " " }
  end

def draw?(board)
  if !won?(board) && full?(board)
    return true
  elsif !won?(board) && !full?(board) || !won?(board)
  return false
  end
end

def over?(board)
  if won?(board) || draw?(board) || full?(board)
    return true
  end
end

def winner(board)
   if won?(board)
      return board[won?(board)[0]]
   end
end
