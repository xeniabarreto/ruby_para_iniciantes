# Definindo uma constante:
PI = 3.14159265359

# Usando uma constante em uma classe:
class Circle
  RADIUS = 5
  def area
    PI * RADIUS * RADIUS
  end
end


# Acessando a constante dentro de uma classe usando o operador de escopo (::) sem necessidade instancia-la
puts Circle::RADIUS


MAX_USUARIOS = 10

# Ao tentar redefini-la aparecerá o aviso: 
# 30_constantes.rb:18: warning: already initialized constant MAX_USUARIOS
# 30_constantes.rb:17: warning: previous definition of MAX_USUARIOS was here

MAX_USUARIOS = 100

puts MAX_USUARIOS # output 100