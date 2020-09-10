module TicTacToe
    class Cell
        @@incrementer = 1

        attr_accessor :incrementer
        attr_accessor :value

        def initialize
            @value = @@incrementer
            @@incrementer += 1
        end

        def self.resetIncrementer
            @@incrementer = 1
        end
    end
end