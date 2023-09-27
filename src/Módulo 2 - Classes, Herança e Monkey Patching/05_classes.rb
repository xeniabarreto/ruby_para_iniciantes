class Carro  
end

novo_carro = Carro.new
puts "Variável carro: #{novo_carro}" #interpolação de string

a = "RUBY PARA INICIANTES"
b = a  #a e b apontam para mesma string

b.downcase! # o ! modifica conteudo da variavel a.
puts a

c = a.clone # metodo para copiar um objeto

c.upcase!
puts c
puts a