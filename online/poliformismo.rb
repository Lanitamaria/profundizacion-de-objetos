class Animal
    def hablar
        if self.class == Perro
        puts 'Guau'
        elsif self.class == Gato
        puts 'Miau'
        elsif self.class == Vaca
        puts 'Muuu'
        end
    end
end

class Perro < Animal
end
class Gato < Animal
end
class Vaca < Animal
end

Perro.new.hablar # Guau
Vaca.new.hablar # Muuu