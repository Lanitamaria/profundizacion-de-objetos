class Lego
    @@count = 0 # Declaración variable de clase
    def initialize(size)
        @size = 1
        @@count += 1 # Aumenta en uno.
    end
end

piece1 = Lego.new(1)
piece2 = Lego.new(2)
piece3 = Lego.new(3)

piece1.total_pieces

#############mejorado#####################

class Lego
    @@count = 0
    def initialize(size = 1)
        @size = size
        @@count += 1
    end

    def self.total_pieces # Método de clase
        @@count
    end
end

piece1 = Lego.new
piece2 = Lego.new
piece3 = Lego.new

puts Lego.total_pieces # Se llama desde la
clase
20.times{ Lego.new }
puts Lego.total_pieces