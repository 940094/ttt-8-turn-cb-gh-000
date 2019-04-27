def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)  # converts a user_input to an integer -1
  index = input.to_i - 1
  return index
end

def valid_move?(board, index)
  if index.between?(0,8) && (board[index] == "" || board[index] == " ")
    return true  # move(board, index)
  else
    return false   # turn(board)
  end
end

def move(board, index, token = 'X')
  board[index] = token
  return display_board(board)
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.chomp
  index = input_to_index(input)
  if valid_move?(board, index)
    return move(board, index)
  else
    return valid_move?(board, index)
  end
end
