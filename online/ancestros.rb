class Abuelo
end

class Padre < Abuelo
end

class Hijo < Padre
end

Hijo.ancestors
# [Hijo, Padre, Abuelo, Object, Kernel, BasicObject]