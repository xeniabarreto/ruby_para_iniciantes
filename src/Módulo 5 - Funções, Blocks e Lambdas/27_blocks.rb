# Exemplo de um block com each para iterar em uma lista
[1, 2, 3].each { |numero| puts numero * 2 }

# Exemplo de um método que aceita um block como argumento
def executar_block
  puts "Antes da execução do block"
  yield if block_given? # Executa o block se fornecido
  puts "Depois da execução do block"
end

executar_block do
  puts "Isso é um block"
end

# Outro exemplo

# Requer as bibliotecas net/http e json.
require 'net/http'
require 'json'

# Define um método chamado listar_usuarios.
def listar_usuarios
  # Dentro do método, ele faz uma requisição HTTP para um serviço que retorna uma lista de usuários em formato JSON.
  uri = URI("http://jsonplaceholder.typicode.com/users")
  response = Net::HTTP.get(uri)
  
  # Se um bloco (block) for fornecido ao chamar o método listar_usuarios, ele analisa o JSON da resposta da requisição e passa os dados do usuário para o bloco.
  yield JSON.parse(response) if block_given?
  # Após a execução do bloco (ou se nenhum bloco for fornecido), ele imprime 
  puts "Finalizando listagem de usuários"  
end


listar_usuarios do |usuarios|
  puts "Total de usuários: #{usuarios.size}"  
end


listar_usuarios do |usuarios|
  usuarios.each do |usuario|
    puts "Nome: #{usuario["name"]}"
  end  
end

# yield é uma palavra-chave que permite que um método chame um bloco que foi passado para ele. Ele passa o controle para o bloco, permitindo que o código dentro do bloco seja executado.
# block_given? é um método que verifica se um bloco foi passado para o método atual. Retorna true se um bloco foi fornecido, caso contrário, retorna false.

#No exemplo, yield JSON.parse(response) chama o bloco passado para listar_usuarios e fornece os dados do usuário como um argumento. Isso permite que você execute código personalizado no contexto dos dados do usuário dentro dos blocos passados ao chamar listar_usuarios. O uso de block_given? garante que o bloco seja chamado apenas se ele tiver sido fornecido ao método.
#