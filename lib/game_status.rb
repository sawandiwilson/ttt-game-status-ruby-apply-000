require "pry"
WIN_COMBINATIONS = [[0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]]

def position_taken(board, index)
  board[index] != " "

end

# def won?(board)
# winner = []
# empty_board = board.all? {|x| x == " "}
# WIN_COMBINATIONS.each do |sub_array|
#     if empty_board || full?(board)
#       return false
#     elsif board[sub_array[0]] == board[sub_array[1]] && board[sub_array[2]] == board[sub_array[1]] && position_taken(board, sub_array[0])
#       # sub_array.all? { |value| board[value] =="X" } || sub_array.all? { |value| board[value] =="O" }
#     return sub_array
#     end
#
#   end
# end
def won?(board)
  WIN_COMBINATIONS.detect do |sub_array|
    board[sub_array[0]] == board[sub_array[1]] &&
    board[sub_array[2]] == board[sub_array[1]] &&
    position_taken(board, sub_array[0])

  end
end

def full?(board)
  !board.any? { |x| x == " " }
end

def draw?(board)
  !won?(board) && full?(board)
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
