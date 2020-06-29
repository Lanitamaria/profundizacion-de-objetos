class Madre
    attr_accessor :nombre
    def initialize(nombre)
        @nombre = nombre
    end
    
    def despertar
        'Es hora de despertar'
    end
end

class Hija < Madre
    def despertar
        super + ' para ir al colegio!'
    end
end

#################ejercicio 2 ########################

class X
    def metodo_complejo
     puts "durante"
    end
end

class Y < X
    def metodo_complejo
        puts "antes"
     super
        puts "después"
    end
end

Y.new.metodo_complejo