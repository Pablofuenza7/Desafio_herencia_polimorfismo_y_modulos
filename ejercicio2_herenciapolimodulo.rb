module Habilidades

    module Voladores
        def volar
        'Estoy volandooooo!'
        end
        def aterrizar
        'Estoy cansado de volar, voy a aterrizar'
        end
    end

    module Nadadores
        def nadar
        'Estoy nadando!'
        end
        def sumergir
        'glu glub glub glu'
        end
    end

    module Caminantes
        def caminar
        'Puedo caminar!'
        end
    end
end


module Alimentaciones

    module Herbivoros
        def comer
        'Puedo comer plantas!'
        end
    end

    module Carnivoros
        def comer
        'Puedo comer carne!'
        end
    end

end

class Animal
    attr_reader :nombre

    def initialize
        @nombre =nombre
    end
    
end

class Ave < Animal
end

class Mamifero < Animal
end

class Insecto < Animal
end

class Pinguino < Ave
    include Habilidades::Nadadores
    include Alimentaciones::Carnivoros
end

class Paloma < Ave
    include Habilidades::Voladores
    include Alimentaciones::Herbivoros
end

class Pato < Ave
    include Habilidades::Nadadores
    include Alimentaciones::Herbivoros
end

class Perro < Mamifero
    include Habilidades::Caminantes
    include Alimentaciones::Carnivoros
end

class Gato < Mamifero
    include Habilidades::Caminantes
    include Alimentaciones::Carnivoros
end

class Vaca < Mamifero
    include Habilidades::Caminantes
    include Alimentaciones::Herbivoros
end

class Mosca < Insecto
    include Habilidades::Voladores
    include Alimentaciones::Herbivoros
end

class Mariposa < Insecto
    include Habilidades::Voladores
    include Alimentaciones::Herbivoros
end

class Abeja < Insecto
    include Habilidades::Voladores
    include Alimentaciones::Herbivoros
end