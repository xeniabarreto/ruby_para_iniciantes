# Declaração de um símbolo simples
:simbolo

# Declaração de um símbolo com nome composto
:nome_composto

# Inserindo espaços na nomeação
:"nome completo"

# Covertendo string para symbol
"nome".to_sym

# Convertendo symbol para string
:nome
:nome.to.s


# Usando símbolos como parâmetros em um método
def mostrar_informacoes(pessoa)
  puts "Nome: #{pessoa[:nome]}"
  puts "Idade: #{pessoa[:idade]}"
end

pessoa = { :nome => "Alice", :idade => 30 }
mostrar_informacoes(pessoa)

# Usando símbolos como chaves em um hash
contato = {
  :nome => "Bob",
  :email => "bob@example.com",
  :telefone => "123-456-7890"
}

# Acessando valores no hash usando símbolos como chaves
puts "Nome: #{contato[:nome]}"
puts "Email: #{contato[:email]}"

# O uso de símbolos como chaves em hashes torna o código mais 
# legível e eficiente em termos de memória, 
# especialmente quando você precisa de chaves estáticas que 
# não mudarão durante a execução do programa.
 
