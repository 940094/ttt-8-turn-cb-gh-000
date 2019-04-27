def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)  # converts a user_input to an integer -1
  input = input.to_i - 1
  return input
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
  if valid_move?(board, input_to_index(input))
    return move(board, index)
  else
    return valid_move?(board, input_to_index(input))
end
