# Comentários em Ruby sempre com #
# Executar script do terminal: ruby variaveis.rb

# Declarando variável
nome_completo = "Bruno Paulino"
puts nome_completo


# Uso interrogação ao final de qualquer método (retorna T or F)
nome_completo = nil
puts nome_completo
puts nome_completo.nil?

# Uso exclamaçãoo ao final de qualquer método (altera a variável)
texto = "    meu texto completo com espaços extras no começo e fim "
puts texto

texto.strip #strip remove os espaços temporarimente no IRB
texto.strip! #com ! vai modificar
puts texto


# Outra forma de declarar variáveis:
a, b = 1, 2
puts a
puts b


