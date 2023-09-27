class Automovel
  def acelera
    # Imagina que Aciona injeção eletrônica
    
    puts "Acelerando automóvel..."
  end  
end

class Carro < Automovel
  # Reescrevemos o método acelera
  def acelera
    # Imagima que Verifica freios e outras coisas...
    
    puts "Verificando equipamentos..."
    # "super" vai chamar o metodo "acelera" da classe pai Automóvel
    # logo apos executar seu próprio metodo acelera
    super
  end
end

carro = Carro.new
puts carro.acelera

# carregar um script acima com pry:
# require("./09_classes_heranca.rb")