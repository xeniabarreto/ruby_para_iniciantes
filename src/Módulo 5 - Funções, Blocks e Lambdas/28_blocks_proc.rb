# Exemplo de um Proc em Ruby:

dobrar = Proc.new { |numero| numero * 2 }
puts dobrar.call(2)  # Saída: 10

# Outro exemplo:

require 'net/http'
require 'json'


def listar_usuarios (quantidade, my_proc)
  uri = URI("http://jsonplaceholder.typicode.com/users")
  response = Net::HTTP.get(uri)
  JSON.parse(response)
  # Call usado sempre para chamar a Proc
  my_proc.call(quantidade)
  yield JSON.parse(response) if block_given?
  puts "Finalizando listagem de usuários"  
end

# Instanciado um objeto do tipo Proc
debug = Proc.new { |variavel| puts "Debugando Variavel #{variavel}" }

# Chamando função passando o block e a fazendo proc ao mesmo tempo
listar_usuarios 10, debug do |response|
  puts "Total de usuários: #{response.size}"  
end

# Chamando a função passando apenas a quantidade e o Proc instanciada
listar_usuarios 10, debug


# O código acima ilustra como usar Procs para encapsular blocos de código que podem ser chamados dinamicamente dentro de um método. 
# Ilustra também como passar blocos como argumentos para métodos, permitindo que a lógica personalizada seja executada no contexto do método.
# 

=begin

Resumo:

Um método listar_usuarios é definido para recuperar dados de usuários de uma API e aceitar dois argumentos: quantidade (um número) e my_proc (um objeto Proc).

Um objeto Proc chamado debug é instanciado para fins de depuração.

O método listar_usuarios é chamado duas vezes:

A primeira chamada passa 10 como quantidade e debug como my_proc, além de um bloco que imprime o total de usuários.
A segunda chamada passa 10 como quantidade e debug como my_proc, mas não inclui um bloco.
Dentro do método listar_usuarios, a Proc my_proc é chamada usando my_proc.call(quantidade).

O método também verifica se um bloco foi passado com if block_given? e, se presente, executa o bloco com dados de usuários.

A saída é impressa para indicar o final da listagem de usuários.
=end
