# Definindo um modulo
module Compartilhado
  def imprime_texto
    puts "TEXTO!!!"
  end
end


class Carro
# São possíveis de injetalos dentro de uma classes
  include Compartilhado
  def metodo_de_carro
    puts "Carro"
  end
end

puts c = Carro.new
puts c.imprime_texto



# Serve para organizar o nosso codigo em name_spaces separadas pelo módulo.
#
## Podemos ter classes com mesmo nome, mas separadas em Módulos, não entram em conflito.
#
# Temos o modulo Fabrica e dentro dela a classe Carro- separado por name spaces.
module Fabrica
  class Carro
    def metodo_de_carro
      puts "Carro da Fabrica"
    end
  end
end

# Instanciando
puts novo_carro = Fabrica::Carro.new

# PS.: SÃO OBJETOS DIFERENTES
puts novo_carro.metodo_de_carro # output: Carro da Fabrica
puts c.metodo_de_carro # output Carro


