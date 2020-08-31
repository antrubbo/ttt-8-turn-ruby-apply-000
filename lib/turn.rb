def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if position_taken?(board, index) == true && index.between?(0, 8) == true
    false
  elsif index.between?(0, 8) == false
    false
  else
    true
  end
end

def position_taken?(board, index)
  if
    board[index] == " " || board[index] == "" || board[index] == nil
    !true
  else
    return true
  end  
end  

def input_to_index(user_input)
  user_input.to_i - 1 
end

def move(board, index, token = "X")
  board[index] = token
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  input_to_index(user_input)
  if 
    valid_move?(board, index) == true
    turn(board)
  else
    false
  end
end



