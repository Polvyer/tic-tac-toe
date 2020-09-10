require '../lib/board.rb'

describe TicTacToe::Board do
    describe '#initialize' do
        it 'returns a blank board object' do
            board = TicTacToe::Board.new
            expect(board.gameBoard[0].value).to eql('')
        end
    end

    describe '#setCell' do
        it 'sets the content of the cell to "X"' do
            board = TicTacToe::Board.new
            board.setCell(0, 'X')
            expect(board.gameBoard[0].value).to eql('X')
        end
    end

    describe '#getCell' do
        it 'sets the content of the cell to "X" and retrieves it' do
            board = TicTacToe::Board.new
            board.gameBoard[0].value = 'X'
            expect(board.getCell(0)).to eql('X')
        end
    end

    describe '#printAllCells' do
        it 'prints the entire board' do
            board = TicTacToe::Board.new
            board.gameBoard.each { |cell| cell.value = 'X' }
            board.printAllCells
            expect(board.getCell(0)).to eql('X')
        end
    end
end