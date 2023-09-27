# Método que aceita parâmetros variáveis
def soma(*numeros)
  resultado = 0
  numeros.each { |numero| resultado += numero }
  resultado
end

# Chamando o método com diferentes números de argumentos
puts soma(1, 2, 3)         # Saída: 6
puts soma(4, 5, 6, 7)      # Saída: 22
puts soma(10)              # Saída: 10
puts soma                  # Saída: 0 (sem argumentos)


# Outro exemplo

def imprimir_nomes (*nomes )
  nomes.each { | n | puts n }
end

nomes = imprimir_nomes 'bruno', 'paulino', 'jose', 'paulo'
puts nomes.size

# Outro exemplo com mais de um parametro, o parametro variavel precisa ser sempre a ultima posição

def imprimir_nomes_por_idade (idade, *nomes )
  puts "Grupo de #{idade} anos:" # primeiro parametro
  nomes.each { | n | puts n }
end

imprimir_nomes_por_idade 26, 'amanda', 'gabriela', 'olivia'
imprimir_nomes_por_idade 15, 'julia', 'erika'
imprimir_nomes_por_idade 'julia' # se informar só um parametro

# Pode ser chamado o metodo também com um array

lista = %w[ jorge amadeu reginado]
imprimir_nomes_por_idade 43, lista