####################Desafio 1######################

class Person
    def initialize(first, last, age)
        @first_name = first
        @last_name = last
        @age = age
    end
end

class Student < Person
    def talk
        puts "Hola profesor. Mi nombre es #{@first_name} #{@last_name}."
    end
end

class Teacher < Person
    def talk 
        puts "Hola alumnos. Mi nombre es #{@first_name} #{@last_name}."
    end
end

class Parent < Person
    def talk
        puts "Hola. Soy uno de los apoderados. Mi nombre es #{@first_name} #{@last_name}."
    end
end


student = Student.new('Nino','Samuel', 14)
teacher = Teacher.new('Profe','Seba', 40)
parent = Parent.new('Mama','AutoridadAbsoluta', 50) 


####################Desafio 2######################

class Animal
    attr_accessor :nombre
    def initialize(nombre)
        @nombre = nombre 
    end
end

module Habilidades
    module Volador
        def volar
            'Estoy volandooooo!'
        end
        def aterrizar
            'Estoy cansado de volar, voy a aterrizar'
        end
    end
    module Nadador
        def nadar
            'Estoy nadando!'
        end
        def sumergir
            'glu glub glub glu'
        end
    end
    module Caminante
        def caminar
            'Puedo caminar!'
        end
    end
end

module Alimentacion
    module Herbivoro
        def comer
            'Puedo comer plantas!'
        end
    end
    module Carnivoro
        def comer
            'Puedo comer carne!'
        end
    end
end

class Ave < Animal
end

class Mamifero < Animal
end

class Insecto < Animal
end


class Pinguino < Ave
    include Habilidades::Nadador
    include Habilidades::Caminante
    include Alimentacion::Carnivoro
end

class Paloma < Ave
    include Habilidades::Volador
    include Habilidades::Caminante
    include Alimentacion::Carnivoro
end

class Pato < Ave
    include Habilidades::Nadador
    include Habilidades::Volador
    include Alimentacion::Herbivoro
end


class Perro < Mamifero
    include Alimentacion::Carnivoro
    include Habilidades::Caminante
end

class Gato < Mamifero
    include Alimentacion::Carnivoro
    include Habilidades::Caminante
end

class Vaca < Mamifero
    include Alimentacion::Herbivoro
    include Habilidades::Caminante
end


class Mosca < Insecto
    include Alimentacion::Carnivoro
    include Habilidades::Volador
end

class Mariposa < Insecto
    include Alimentacion::Herbivoro
    include Habilidades::Volador
end

class Abeja < Insecto
    include Alimentacion::Herbivoro
    include Habilidades::Volador
end
