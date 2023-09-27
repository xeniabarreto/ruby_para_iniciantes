class Automovel
  def self.tipo_cambio
    puts "Manual"
  end

  def acelera
    verifica_combustivel
    puts "Acelerando automóvel..."
  end

  private
  def verifica_combustivel
    puts "Verificando combustível"
  end
end

auto = Automovel.new
puts auto.acelera

# Se fizermos como o abaixo vai dar erro
# puts auto.verifica_combustivel

# Os métodos Privados também podem ser acessados por suas classes filhas:

class Carro < Automovel
  def verifica_combustivel
    super
  end
end

auto2 = Carro.new
puts auto2.verifica_combustivel