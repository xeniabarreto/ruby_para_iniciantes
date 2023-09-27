class Automovel
  # Metodo de classe: self permite que metodo seja acessado sem instanciar um objeto 
  def self.tipo_cambio
    puts "Manual"
  end

  # Metodo de instancia: não tem o self e só poderá ser acessado quando instanciado a classe
  def acelera
    puts "Acelerando automóvel"
  end
end

class Carro < Automovel
  def acelera
    puts "verificando equipamentos..."
    super
  end
end

puts Automovel.tipo_cambio

# Classe carro nao tem o método tipo_cambio, mas consegue acessa-la, subindo para classe pai.
puts Carro.tipo_cambio

# Abaixo, vai dar erro, pois a classe não foi instanciada
# puts Automovel.acelera
