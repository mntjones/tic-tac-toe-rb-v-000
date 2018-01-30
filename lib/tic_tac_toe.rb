WIN_COMBINATIONS = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]]

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input.to_i - 1
end

def move(board, board_index, player_char)
  board[board_index] = player_char
end

def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

def valid_move? (board, index)
  if index > 8 || index < 0
    return false
  else
    return !position_taken?(board, index)
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  input = input_to_index(input)

  if valid_move?(board, input)
<<<<<<< HEAD
    move(board, input, current_player(board))
=======
    move(board, input)
>>>>>>> c98759ce4c521516f429e8cb7f3f33bdce1f8202
    display_board(board)
  else
    turn(board)
  end
end

def turn_count (board)
  # counts occupied spaces
  count = 0
  board.each do |space|
    if space == "X" || space == "O"
      count += 1
    end
  end
  return count
end

def current_player (board)
  # X for 1st move, O for 2nd, etc.
  turn_count(board) % 2 == 0 ? "X":"O"
end

def won?(board)
  position = []
  
<<<<<<< HEAD
  WIN_COMBINATIONS.each do |win|
    win.each do |index|
      position << position_taken?(board, index)
    end

=======
  # looking at each array(win)in the WIN_COMBINATIONS constant
  WIN_COMBINATIONS.each do |win|
    # looking at each index in the win array
    win.each do |index|
      # checking each index in the win array to see if position is taken (true/false) and saving to array position
      position << position_taken?(board, index)
    end
    # checking to see if position array holds all TRUE values.
>>>>>>> c98759ce4c521516f429e8cb7f3f33bdce1f8202
    all_true = position.all? do |pos| 
      pos 
      end
      
    if all_true
<<<<<<< HEAD
=======
      # checking to see if those positions are the same character
>>>>>>> c98759ce4c521516f429e8cb7f3f33bdce1f8202
      if board[win[0]] == board[win[1]] && board[win[0]]== board[win[2]]
        return win
      else
        position = []
      end
      
    else
      position = []
    end
  end
<<<<<<< HEAD
=======
  # returns false is no winning combo found
>>>>>>> c98759ce4c521516f429e8cb7f3f33bdce1f8202
  return false
end

def full? (board)
  full = board.none? {|index| index == " " || index == nil }
end

def draw? (board)
<<<<<<< HEAD
=======
  # TRUE if not won && full
  # FALSE if not won && not full
  # FALSE is not full
  
>>>>>>> c98759ce4c521516f429e8cb7f3f33bdce1f8202
  win = won?(board)
  full = full?(board)
  
  if !win && full
    return true
  else
    return false
  end
end

def over? (board)
  win = won?(board)
  full = full?(board)
  draw = draw?(board)
  
  if win || full || draw
    return true
  else
    return false
  end
end

def winner (board)
  x_or_o = won?(board)
<<<<<<< HEAD
=======
  # this returns the winning array of board
  
>>>>>>> c98759ce4c521516f429e8cb7f3f33bdce1f8202
  if x_or_o == false
    return nil
  else
    return board[x_or_o[0]]
  end
<<<<<<< HEAD
end

def play(board)
  until over?(board)
    turn(board)
  end
  
  if won?(board)
    puts "Congratulations #{winner(board)}!"
  else
    puts "Cat's Game!"
  end
=======
>>>>>>> c98759ce4c521516f429e8cb7f3f33bdce1f8202
end