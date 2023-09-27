# Parâmetros de chave e valor devem ser definidos sempre por ultimo

def produzir (quantidade, tamanho: :P, cor: :azul)
  puts "Produzindo #{quantidade} roupas de tamanho #{tamanho} e cor #{cor}"
end

# Precisa ser chamado definindo chave e valor
produzir 40, tamanho: :G, cor: :preta

# Quando há chave e valor, a ordem do parâmetro destes mesmos parametros não importa
# Necessario respeitar apenas a posição "quantidade"
produzir 40, cor: :verde, tamanho: :M

# Informando apenas a quantidade, os demais ele assume o parametro default
produzir 30 


# Outro exemplo

# Método que aceita parâmetros como palavras-chave
def calcular(idade:, salario:)
  idade * salario
end

# Chamando o método com argumentos nomeados
resultado = calcular(idade: 30, salario: 5000)
puts resultado  # Saída: 150000
