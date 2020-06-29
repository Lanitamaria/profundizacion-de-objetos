class Madre
    attr_accessor :nombre
    def initialize(nombre)
        @nombre = nombre
    end
end

class Hija < Madre
    def initialize(nombre)
        @nombre = nombre + " Jr"
    end
end

madre = Madre.new('Ada')
hija = Hija.new(madre.nombre)
hija.nombre