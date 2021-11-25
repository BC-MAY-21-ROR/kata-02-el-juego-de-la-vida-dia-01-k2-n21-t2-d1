class Random
    def randomly_populate
        cells.each do |cell|
            cell.alive = [true, false].sample
        end
    end

    def intialize(matrix, width, long, generation)
        @matrix = matrix
        @long = long
        @width = width
        @generation = generation
    end

    def print
        puts "Generation #{@generation}"
        width = @width-1
        long = @long-1
        (0..width).each do |i|
            chain = ''
            (0..long).each do |j|
                chain += @matrix[i][j]
            end
            puts chain
        end
    end
end
require_relative ______