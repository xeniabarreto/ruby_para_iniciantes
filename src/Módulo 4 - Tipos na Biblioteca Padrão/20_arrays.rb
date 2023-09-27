# Declarado vazio
lista1 = []

# Instanciando
lista2 = Array.new

# Declarado com valores
puts lista3 = [1,2,3,4]

# Declarado com varios tipos
puts lista4 = ["nome", :nome, 1, 2.5]

# Conversão de strings para array, tem de fazer o uso do "%w"
lista5 = %w(conversao de strings para array)
puts lista5

# Verificando tamanho do array
puts lista5.size

# Verificando se vazio
puts lista5.empty?

# Realizando substituições
puts lista5[0] = "bruno"
puts lista5

# Adicionando objeto
lista4.push 10
puts lista4

# Juntar e concatenar criando um novo objeto
lista_join = lista5.join ','
puts lista_join