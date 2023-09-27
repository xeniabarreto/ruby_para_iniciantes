# Criando um hash vazio
meu_hash = {}

# Criando um hash com pares chave-valor
pessoa = {
  nome: "Alice",
  idade: 30,
  cidade: "São Paulo"
}

# Acessando valores por chave
puts pessoa[:nome]  # Saída: "Alice"
puts pessoa[:idade] # Saída: 30

# Adicionando um novo par chave-valor
pessoa[:profissao] = "Engenheira"
# Atualizando um valor existente
pessoa[:idade] = 31

puts pessoa

# Iterando sobre chaves e valores
pessoa.each do |chave, valor|
  puts "#{chave}: #{valor}"
end

# Iterando sobre chaves e valores com map invertendo dados
newPessoa = pessoa.map { | key, value | "#{value}: #{key}"}
puts "newPessoa" + newPessoa.to_s

# Verificando se uma chave existe
puts pessoa.key?(:nome)
puts pessoa.key?(:genero)

# Removendo um par chave-valor
pessoa.delete(:profissao)
puts pessoa

# Obtendo o tamanho do hash
puts pessoa.length


