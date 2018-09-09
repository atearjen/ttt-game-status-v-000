# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5],  # Middle row
  [6,7,8], #bottom row
  [0,3,6], #first columns
  [1,4,7], #2nd columns
  [2,5,8], #3rd columns
  [0,4,8], #first diagonals
  [2,4,6] #diagonal 2nd
]
def won?(board)
  WIN_COMBINATIONS.find do |win_combination|

    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]
    
  end
end

def full?(board)
  if board.all? {|i| i.position_taken?}
    return true
  else
    return false
  end
end

# not_emp = board.any? {|num| position_taken?(board,num.to_i) }
# 
# if not_emp
#   if board[win_index_1] == "X" && board[win_index_1] == board[win_index_2] && board[win_index_1] == board[win_index_3]
#     return win_combination
# 
# elsif board[win_index_1] == "O" && board[win_index_1] == board[win_index_2] && board[win_index_1] == board[win_index_3]
#     return win_combination
#   end
# # else
#   # return false
# else
#   return false
# end #for if statement
