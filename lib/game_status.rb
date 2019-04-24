# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [2,4,6]]

def won?(board)
  trw = WIN_COMBINATIONS[0]

  if board.all?{ |i| i == " " || i == "" || i == nil }
    return false
  end

#  WIN_COMBINATIONS.each do |sub_arr|
  trw.each do |idx|
    position = board[idx]

    if position.all?{ |i| (i == "X") || (i == "O") }
      return trw
    else
      return false
    end
  end
  #end
      #if(board(trw[1]) == "X") && (board(trw[2]) == "X")) ((board[idx] == "X") && (board[trw[1]] == "X") && (board[trw[2]] == "X")) || ((board[trw[0]] == "O") && (board[trw[1]] == "O") && (board[trw[2]] == "O"))
  #  return trw
  #else
  #  return false
  #end

end

def full?(board)
  if ( board.all?{ |i| (i == "X" || i == "O" ) } )
    return true
  else
    return false
  end
end


def draw?(board)

end


def over?(board)
  if (won?(board) == true) || (board.all?{ |i| (i == "X" || i == "O") } )
    return true
  else
    return false
  end
end


def winner(board)
  if won?(board) && position_1 == "X"
    return "X"
  end

  if won?(board) && position_1 == "O"
    return "O"
  end
end
