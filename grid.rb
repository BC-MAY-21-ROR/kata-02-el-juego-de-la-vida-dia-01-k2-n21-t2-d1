require_relative 'display'
class Grid
    def intialize(width,long)
        @width = width
        @long = long
        @matriz = []
    end

    def matrix 
        @matriz
    end

    def create_matrix
        @long.times do |i|
            @matriz.push([])
            @width.times do |j|
                @matriz[i].push(['.','*'].sample)
            end
        end
        
    end

    def kill_border
        (0..@width - 1).each do |i|
            (0..@long - 1).each do |j|
                @matriz[i][j] = '.' if i.zero? || (i == @long - 1) || j.zero? || (j == @width - 1)
            end
        end
    end
end
