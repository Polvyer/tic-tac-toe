require_relative './board.rb'

module TicTacToe
    class Game
        attr_accessor :players, :board, :current_player, :other_player, :board_picture
        def initialize(players)
            @players = players
            @board = TicTacToe::Board.new()
            @current_player, @other_player = players.shuffle
            @board_picture = "\n1 2 3\n4 5 6\n7 8 9\n\n"
        end

        def play()
            firstTurn = true
            turn = 0
            winner = false
            until (winner || turn == 9) do
                firstTurn ? (puts "#{@current_player.name}(#{current_player.sign}) goes first!")
                          : (puts "#{@current_player.name}(#{current_player.sign}) is next!")
                firstTurn = false
                puts "Here is the current board:"
                puts @board_picture
                puts "Where do you want to place your sign?"
                number = gets.chomp.to_i
                puts ""
                if @board_picture.sub!(number.to_s, @current_player.sign)

                    # Sets spot to current player's sign
                    @board.setCell(number - 1, @current_player.sign)

                    # Switch current player
                    tmpPlayer = @current_player
                    @current_player = @other_player
                    @other_player = tmpPlayer

                    # Check for winner
                    winner = @board.checkWinner

                    # Increment turn number
                    turn += 1
                else
                    puts "Sorry, but that spot is already taken. Please choose again."
                end
            end

            # Game ends in tie
            if (turn == 9) && (winner == false)
                puts "Tie! Better luck next time!"
            # Print out winner
            else
                puts "The winner is #{@other_player.name}(#{other_player.sign})!"
            end

            # Print out final board
            puts "Here is the final board:"
            puts @board_picture
        end
    end
end