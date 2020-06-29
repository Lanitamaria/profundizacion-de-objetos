class Persona
    attr_accessor :nombre
    def initialize(nombre)
     @nombre = nombre
    end

    def cantar
     "Soy #{self.nombre} y estoy cantando!"
    end

    def ir_a_karaoke
        self.cantar
    end
end

persona_amable = Persona.new('John Doe')
puts persona_amable.cantar
puts persona_amable.ir_a_karaoke

############ self en metodo de clase #############
class Fantasma
    def self.reflejar
     self
    end
end
    
fantasma = Fantasma.new
Fantasma.reflejar == fantasma # false
Fantasma.reflejar == Fatasma # true
