require_relative './cell.rb'

module TicTacToe
    class Board
        attr_accessor :gameBoard
        def initialize()
            @gameBoard = Array.new(9) {Cell.new}
        end

        def setCell(cellNumber, playerSign)
            @gameBoard[cellNumber].value = playerSign
        end

        def getCell(cellNumber)
            @gameBoard[cellNumber].value
        end

        def printAllCells
            @gameBoard.each { |cell| puts cell.value }
        end

        def checkWinner
            # Check first row
            if (@gameBoard[0].value == @gameBoard[1].value) && (@gameBoard[0].value == @gameBoard[2].value)
                return @gameBoard[0].value
            # Check second row
            elsif (@gameBoard[3].value == @gameBoard[4].value) && (@gameBoard[3].value == @gameBoard[5].value)
                return @gameBoard[3].value
            # Check third row
            elsif (@gameBoard[6].value == @gameBoard[7].value) && (@gameBoard[6].value == @gameBoard[8].value)
                return @gameBoard[6].value
            # Check first column
            elsif (@gameBoard[0].value == @gameBoard[3].value) && (@gameBoard[0].value == @gameBoard[6].value)
                return @gameBoard[0].value
            # Check second column
            elsif (@gameBoard[1].value == @gameBoard[4].value) && (@gameBoard[1].value == @gameBoard[7].value)
                return @gameBoard[1].value
            # Check third column
            elsif (@gameBoard[2].value == @gameBoard[5].value) && (@gameBoard[2].value == @gameBoard[8].value)
                return @gameBoard[2].value
            # Check diagonal one
            elsif (@gameBoard[0].value == @gameBoard[4].value) && (@gameBoard[0].value == @gameBoard[8].value)
                return @gameBoard[0].value
            # Check diagonal three
            elsif (@gameBoard[2].value == @gameBoard[4].value) && (@gameBoard[2].value == @gameBoard[6].value)
                return @gameBoard[2].value
            else
                return false
            end
        end
    end
end