class Carro
  
  attr_accessor :marca, :modelo

  # Método construtor
  def initialize(modelo, marca)
    @modelo = modelo
    @marca = marca    
  end

end

carro = Carro.new "Model S", "Tesla"
puts carro