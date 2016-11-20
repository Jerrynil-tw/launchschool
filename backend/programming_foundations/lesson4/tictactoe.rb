require 'pry'
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # colums
                [[1, 5, 9], [3, 5, 7]]              # diagnals
INITIAL_MARKER = ' '
PLAYER_MARKER = 'x'
COMPUTER_MARKER = 'o'

def prompt(msg)
  puts "=> #{msg}"
end

# rubocop:disable Metrics/MethodLength, Metrics/AbcSize
def display_board(brd)
  system 'clear'
  puts"  Player : #{PLAYER_MARKER}"
  puts"Computer : #{COMPUTER_MARKER}"
  puts""
  puts"     |     |"
  puts"  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}  "
  puts"     |     |"
  puts"-----+-----+-----"
  puts"     |     |"
  puts"  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}  "
  puts"     |     |"
  puts"-----+-----+-----"
  puts"     |     |"
  puts"  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}  "
  puts"     |     |"
  puts""
end
# rubocop:enable Metrics/Methodlength, Metrics/AbcSize

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |key| brd[key] == INITIAL_MARKER }
end

def joinor(arr, divider = ', ', connector = 'or')
  case arr.size 
  when 0 then ""
  when 1 then "#{arr.first}"
  when 2 then arr.join(" #{connector} ")
  else
    arr[-1] = "#{connector} #{arr.last}"
    arr.join(divider)
  end
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "choose a square from #{joinor(empty_squares(brd))}"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry, that's not a valid choice, please put in again"
  end
  brd[square] = PLAYER_MARKER
end

def computer_places_piece!(brd)
  square = empty_squares(brd).sample
  brd[square] = COMPUTER_MARKER
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 3 # *line means each value in line
      return "Player"
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3 # *line means each value in line
      return "Computer"
    end
  end
  nil
end

player_score = 0
computer_score = 0

loop do
  board = initialize_board

  loop do
    display_board(board)
    player_places_piece!(board)
    break if someone_won?(board) || board_full?(board)

    computer_places_piece!(board)
    break if someone_won?(board) || board_full?(board)
  end

  display_board(board)

  if someone_won?(board)
    prompt "#{detect_winner(board)} won!"
  else
    prompt "It's a tie!"
  end
  case detect_winner(board)
  when "Player" then player_score += 1
  when "Computer"then computer_score += 1
  end
  prompt "You won #{player_score} times, Computer won #{computer_score} times"
  prompt "Do you want to play again?(put in y if you do)"
  answer = gets.chomp
  break unless answer.downcase.start_with?("y")
end

prompt "goodbye!"
