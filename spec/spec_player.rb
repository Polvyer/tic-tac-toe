require '../lib/player.rb'

describe TicTacToe::Player do
    describe '#initialize' do
        it 'returns a player object with the correct name' do
            player = TicTacToe::Player.new({ name: 'William', sign: 'X' })
            expect(player.name).to eql('William')
        end
    end

    describe '#initialize' do
        it 'returns a player object with the correct sign' do
            player = TicTacToe::Player.new({ name: 'William', sign: 'X' })
            expect(player.sign).to eql('X')
        end
    end
end