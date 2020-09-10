require '../lib/cell.rb'

describe TicTacToe::Cell do
    describe '#initialize' do
        it 'returns a cell filled with the correct sign' do
            cell = TicTacToe::Cell.new('X')
            expect(cell.value).to eql('X')
        end
    end
end