# Método com parâmetro padrão
def saudacao(nome = "Visitante")
  puts "Olá, #{nome}!"
end

# Chamando o método com e sem argumento
saudacao "Alice"     # Saída: "Olá, Alice!"
saudacao             # Saída: "Olá, Visitante!"

# Outro exemplo

def produzir(tamanho = :m, cor = :azul, quantidade)
  puts "Produzindo roupas de tamanho #{tamanho}, cor #{cor} e quantidade #{quantidade}"
end

# Chamar o método com um único valor (o terceiro parâmetro, quantidade)
produzir 10 # Saída: Produzindo roupas de tamanho m, cor azul e quantidade 10

# Chamar o método com três valores (os três parâmetros, tamanho, cor, e quantidade):
# Notas: Os dois primeiros parâmetros (tamanho e cor) não têm um valor padrão explícito definido, portanto, para usá-los, você deve fornecer valores ao chamar o método. Se você deseja fornecer apenas os parâmetros cor e quantidade, é necessário especificar o valor padrão para tamanho (nesse caso, :m) ao chamá-lo, conforme mostrado no segundo exemplo.
produzir :g, :preto, 10 #Saída: Produzindo roupas de tamanho g, cor preto e quantidade 10

