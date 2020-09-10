require_relative './game.rb'
require_relative './player.rb'

puts "\nWelcome to tic tac toe\n\n"

# Get players' names
puts "Enter Player 1's (O) name:"
player_1_name = gets.chomp
puts "Enter Player 2's (X) name:"
player_2_name = gets.chomp

# Set default names if nothing is inputted
if player_1_name == ""
    player_1_name = "Player1"
end

if player_2_name == ""
    player_2_name = "Player2"
end

# Create player objects
player1 = TicTacToe::Player.new({ name: player_1_name, sign: "O" })
player2 = TicTacToe::Player.new({ name: player_2_name, sign: "X" })

# Store player objects
players = [player1, player2]

# Create game
game = TicTacToe::Game.new(players)

# Start game
game.play