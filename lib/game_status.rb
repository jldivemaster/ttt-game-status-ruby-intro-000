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

  index = trw.each { |ele| return ele }
  position = board[index]

  X_win = position.all? do |i|
      (i == "X")?
  end
  
  if X_win == true
    return trw
  else
    return false

  end

       # Will evaluate to true for 1, true for 3
    #=> true
     #=> true


end

def full?(board)
  if ( board.all?{ |i| (i == "X" || i == "O" ) } )
    return true
  else
    return false
  end
end


def draw?(board)
  if ( board.all?{ |i| (i == "X" || i == "O" ) } )
    return true
  else
    return false
  end
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
