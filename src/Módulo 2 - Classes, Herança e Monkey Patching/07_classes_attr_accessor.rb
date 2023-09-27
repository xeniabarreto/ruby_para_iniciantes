class Carro

  # Metodo accessor gera Getter e Setter (acessar ou atribuir)
  # ":" os dois pontos nos atributos acima são symbols
  attr_accessor :marca, :modelo
  
  # Metodo reader apenas Getter
  attr_reader :marca, :modelo

  # Metodo writer apenas Setter
  attr_writer :marca, :modelo

  def velocidade_maxima
    250
  end

  #Atributo virtual, será criado apenas no processamento
  #Não há atributo nem variavel de instancia no método
  def descricao
    "Marca: #{@marca} e Modelo: #{@modelo}"
  end

end

carro = Carro.new
carro.marca = "Ford"
carro.modelo = "Focus"
puts "Marca: " + carro.marca
puts "Modelo: " + carro.modelo
puts "Descrição: " + carro.descricao

