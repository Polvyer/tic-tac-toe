module TicTacToe
    class Player
        attr_accessor :name, :sign
        def initialize(player)
            @name = player[:name]
            @sign = player[:sign]
        end
    end
end
