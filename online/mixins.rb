module Nadador
    def nadar
        puts 'Puedo nadar!'
    end
end
module Carnivoro
    def comer
        puts 'Puedo comer carne!'
    end
end
    
class Mamifero
end

class Gato < Mamifero
    include Carnivoro
end

class Perro < Mamifero
    include Nadador
    include Carnivoro
end
#Si utilizamos la instrucción include, los métodos del módulo serán incluidos como métodos
#de instancia.
=begin Si utilizamos la instrucción extend, los métodos del módulo serán incluidos como métodos
de clase. =end