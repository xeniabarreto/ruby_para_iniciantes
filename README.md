
Curso [Ruby para Iniciantes](https://www.udemy.com/course/ruby-para-iniciantes/) _by Bruno Paulino_

# Módulo 1 - Introdução ao Ruby
## Um pouco sobre a linguagem

- Orientada a objeto
  Tudo em Ruby é um objeto.

- Tipagem Dinânica
  Descobre tipó de objeto em tempo de execução.

- Reflexão
  Metaprogramação: permite criar classes e métodos dinamicamente em tempo de execução.
  Introspecção: possível examinar detalhes sobre classes e objetos existentes, como seus métodos e atributos.
  Mudança dinâmica: pode alterar o comportamento de objetos ou classes em tempo de execução, adicionando, removendo ou modificando métodos e atributos.

- Interpretada - MRI (Matz's Ruby Interpreter)
  Interpretada apenas em tempo de execução, não é compilada (enquanto escrevemos).


## Instalações

RVM - gerenciador de vesão  precisa ser instalado  

Instalar Pry - é uma extensão mais poderosa e flexível do IRB com recursos adicionais:
```git
gem install pry
```


## Interactive Ruby Shell IRB 

IRB é uma ferramenta interativa que permite escrever e testar código Ruby linha a linha em tempo real. É útil para experimentar, depurar e aprender Ruby de forma interativa.

```git
$ irb - para entrar
$ exit - para sair
$ nome = "bruno" - declarar um var
$ nome.class = verificar o tipo dela
$ String.public_methods - ver todos metódos
$ String.superclass - verificar cada método
$ 10.class - outra forma verificar a classe como número sem estanciar
$ "bruno".length - ver o comprimento palavra "bruno"
$ "rodrigo".slice(0, 3) - dividir em "rod"
```

Os metodos funciona como funções em Node.js  
Em Ruby TUDO é objeto


## Declarando função:

```irb
irb(main):011:1* def soma(a,b)  
irb(main):012:1*   a + b  
irb(main):013:0> end  
=> :soma  
```

Toda ultima linha de uma função será considerado como "return", nao precisa especificar.

## Chamando a função:

```irb
irb(main):014:0> soma(1,2)  
=> 3
```

No Ruby no precisa passar os parenteses na função na hora de chamar:

```irb
irb(main):014:0> soma(1,2)  
=> 3
```

Podemos usar para concatenar:

```irb
irb(main):017:0> soma "xenia ","barreto"  
=> "xenia barreto"
```

Concaternando listas:

```irb
irb(main):021:0> lista = [1,2,3]  
=> [1, 2, 3]  
irb(main):022:0> soma lista, [4,5,6]  
=> [1, 2, 3, 4, 5, 6]
```


## Variáveis, Comentários, Métodos e Escopo

"#" - hastag para adicionar comentário

variável - são declaradas em "snake_case", ou seja, com underline, diferente do "camel case"  

nil - o mesmo que "null"

nil? - metodo com interrogação no final, retorna true ou false

nil! - metodo com exclamação no final vai alterar o proprio objeto - cuidado ao usar

métodos - bloco de código reutilizável que realiza uma tarefa específica quando chamado - são como as funções em Node.js

escopo - determina onde variáveis são acessíveis no código


## Operadores

Comparação

```ruby
>  >=  <  <=  ==  !=
```

Lógicos

```ruby
!  &&  ||  not  and  or
```

Matemáticos

```ruby
+  -  *  /  %  **
```

** operador de potência


Controle de Fluxo

```ruby
if  else  do  while
```

## Práticando com os operadores no Pry

Comparação e Lógicos:

```irb
pry(main)> a, b = 1, 2
=> [1, 2]

pry(main)> if a > b
pry(main)*   puts "A é maior que B"
pry(main)* else  
pry(main)*   puts "B é maior que A"
pry(main)* end  
B é maior que A

# Outro tipo de estrutura, na mesma linha:

pry(main)> puts "A é menor que B" if a < b
A é menor que B
```

Matemáticos:

```irb
pry(main)> 1+1
=> 2

pry(main)> 2-1
=> 1

pry(main)> 2*2
=> 4

pry(main)> 2/2
=> 1

pry(main)> 10%5
=> 0

pry(main)> 11%5
=> 1

pry(main)> 2**3
=> 8
```

## Input e Output

O **gets** é usado para receber entrada do usuário, enquanto o **puts** é usado para exibir saída no console em Ruby.


# Módulo 2 - Classes, Herança e Monkey Patching

## Classes

Nome iniciando sempre com letra maiuscula em formato camelCase, por convenção.

## Variáveis e Métodos de Instância

São definidas dentro da classe.
Variáveis são usadas para armazenar dados que pertencem a uma instância específica da classe, enquanto os métodos são funções ou comportamentos que podem ser chamados em instâncias dessa classe.  


```ruby
class MinhaClasse
  # Variável de instância
  @variavel_de_instancia = 10

  # Método de instância
  def metodo_de_instancia
    puts "Isso é um método de instância."
  end
end

```

## Atributos virtuais e Acessors

São formas de acessar as variáveis de instância.

attr_accessor gera ambos (GET e SET).
attr_writer gera apenas métodos de escrita (SET)  
attr_reader gera apenas métodos de leitura (GET)  

Atributos virtuais não têm uma variável de instância associada e são calculados dinamicamente no método, ou seja, no processamento.  

## Herança de Classes

Ruby nao permite herança múltipla, ou seja uma Carro e Moto, nao podem herdar juntas da classe Automóvel.  

Toda classe em Ruby herda de "Object", que dipoe alguns metodos prontos (.clone, por exemplo).  

Todo "Object" herda da classe "BasicObject", que é uma classe limpa, sem métodos. Quando desejamos criar uma classe limpa, podemos herdar diretamente de "BasicObject".  

<img align="center" width="300" height="300" src="https://github.com/xeniabarreto/xeniabarreto/assets/88126195/bce7d982-ec2f-4c84-aae8-6c89729331c4" />


## Métodos de Classe

São métodos acionados da própria classe sem a necessidade de instanciar um objeto, quando declarados com prefixo "self".  

```ruby
class MinhaClasse
  def self.metodo_de_classe
    puts "Este é um método de classe"
  end
end

# Para chamar o método de classe, você não precisa criar uma instância da classe:
MinhaClasse.metodo_de_classe

```

## Visibilidade de Métodos

Trata-se de metódos publicos e privados, conhecidos como Puclic e Private.  

Todos os métodos em Ruby são públicos por padrão.  

Métodos privados são declarados com private e só podem ser chamados dentro da classe onde são definidos.

Classes filhas podem acessar métodos privados de suas classes pai.

## Abrindo Classes

No console interactive Ruby (pry) é possivel abrir a classe e adicionar um novo método em tempo de execução, sem precisar reescrever a classe.

```irb
[1] pry(main)> class Carro
[1] pry(main)*   def acelera
[1] pry(main)*     puts "acelerando..."
[1] pry(main)*   end  
[1] pry(main)* end  
=> :acelera
[2] pry(main)> class Carro
[2] pry(main)*   def freia
[2] pry(main)*     puts "parando..."
[2] pry(main)*   end  
[2] pry(main)* end  
=> :freia
[3] pry(main)> carro = Carro.new
=> #<Carro:0x00007efc3f22aa78>
[4] pry(main)> carro.acelera
acelerando...
=> nil
[5] pry(main)> carro.freia
parando...
```

É importante usar essa capacidade com cuidado, pois pode tornar o código menos previsível e mais difícil de depurar.  

É uma prática comum em Ruby, mas deve ser usada com responsabilidade para evitar conflitos de nomes de método e outros problemas.

## Monkey Patching

É sobre abrir uma classe e reenscrever métodos existentes em tempo de execução.

Isso pode ser útil, mas deve ser usado com cautela, pois pode tornar o código menos previsível e mais difícil de manter.

```irb
[1] pry(main)> class Carro
[1] pry(main)*   def acelera
[1] pry(main)*     puts "Acelerando"
[1] pry(main)*   end  
[1] pry(main)* end  
=> :acelera
[2] pry(main)> carro = Carro.new
=> #<Carro:0x00007fc8d70e1c60>
[3] pry(main)> carro.acelera
Acelerando
=> nil
[4] pry(main)> class Carro
[4] pry(main)*   def acelera
[4] pry(main)*     puts "Novo método"
[4] pry(main)*   end  
[4] pry(main)* end  
=> :acelera
[5] pry(main)> carro.acelera
Novo método
=> nil
```

# Módulo 3 - Condicionais e Loops
## If e Else

"If" é uma estrutura de controle em Ruby que executa um bloco de código se uma condição especificada for verdadeira.  

"Elsif" é usado para adicionar condições adicionais em um bloco if. Se a condição do if for falsa, o elsif verifica a próxima condição e executa seu bloco de código se for verdadeira.


## Unless

O unless em Ruby é uma estrutura de controle que é o oposto do if. Ele executa um bloco de código somente se a condição especificada for falsa.

```ruby
idade = 15

unless idade >= 18
  puts "Menor de idade"
end
```

## And e Or

As diferneças entre && e || para "and" e "or" é:

&& e || têm maior precedência e são usados para operações lógicas.
and e or têm menor precedência e são usados para controle de fluxo condicional.

Exemplo:

x && y avalia x e, se for verdadeiro, avalia y.

x || y avalia x e, se for falso, avalia y.

x and y avalia x e, se for verdadeiro, avalia y.

x or y avalia x e, se for falso, avalia y.

## Case

O case em Ruby é uma estrutura de controle que avalia uma expressão e executa diferentes blocos de código com base em seu valor, sendo útil para tomar decisões com várias opções, semelhante a um "switch" em outras linguagens.

## Loop

**While**: Executa um bloco de código enquanto uma condição é verdadeira.  

**Until**: Executa um bloco de código enquanto uma condição é falsa.  

**begin...end while**: Executa um bloco de código pelo menos uma vez e continua enquanto uma condição é verdadeira.

**For**: Itera sobre uma sequência de valores, como um array ou um intervalo, e executa um bloco de código para cada valor.

**Loop do**: loop do é uma maneira de criar um loop infinito até que seja explicitamente interrompido com a instrução break ou algum outro mecanismo de controle de fluxo.


O while e o until são usados para controle de fluxo baseado em condições, enquanto o for é usado para iterar sobre uma sequência de valores e o begin...end while é um loop especial que garante que o bloco de código seja executado pelo menos uma vez.

## Break, Next e Redo

Break é usado para sair imediatamente de um loop e continuar o restante de codigo.

Next pula iteração atual para proxima. Útil quando você deseja ignorar a execução de um loop em casos específicos.

Redo: Reinicia a iteração atual do loop desde o início. Útil quando você deseja repetir a mesma iteração do loop com base em uma condição.


## Tratando Exceptions em Ruby

Para lidar com as exceptions temos o raise e o rescue, sendo:

**raise** usado para gerar uma exceção, quando ocorre um erro.

**rescue** Usado para capturar e tratar exceções, permite que você defina como lidar com essa exceção evitando que o programa encerre abruptamente.

## Else e Ensure

Em um tratamento de exceptions o **else** em um bloco rescue permite que você defina o código a ser executado se nenhuma exceção for capturada.

O **ensure** permite que você defina código que será executado, independentemente de uma exceção ser capturada ou não, geralmente usado para garantir a execução de código importante, como limpeza.  


# Módulo 4 - Tipos na Biblioteca Padrão

## Boleanos

O "true" e "false" em Ruby não são boleanos, diferente de outras linguagens, eles são objetos da classe TrueClass e False Class.

## Números Inteiros

Numeros inteiros são objetos das classes Integer.

Para outros tipos de números é necessario adicionar um prefixo para defini-lo, por exemplo:

"0b" = binario
"0c" = octal
"0x" = exadecimal

Você pode usar o "_" para separar os números muito grandes.

```irb
[1] pry(main)> 50
=> 50
[2] pry(main)> 50.class
=> Integer
[3] pry(main)> 3094889204843834054834278354942.class
=> Integer
[4] pry(main)> 0b1010
=> 10
[5] pry(main)> 0o45
=> 37
[6] pry(main)> 0xAD123
=> 708899
[7] pry(main)> 1_000_000
=> 1000000
```

Float, é pertencente a classe Float e necessário utilização de ponto.

```irb
[1] pry(main)> 1.5
=> 1.5
[2] pry(main)> 1.5.class
=> Float
[3] pry(main)> 100 + 1.5
=> 101.5
```

## Strings

As strings podem ser declaras com aspas simples ou aspas duplas.

Interpolação de Strings podem ser realizadas apenas em aspas duplas.

Caso necessite user aspas duplas dentro de outra é possível fazendo uso **\"** no inicio e fim da palavra:

```irb
[1] pry(main)> puts "'Nome' com \"aspas\" duplas"
'Nome' com "aspas" duplas
=> nil
```

É possivel declarar uma variável com quebras de linhas com uso do << EOS no inicio e fim:

```irb
[1] pry(main)> texto_longo = <<EOS
[1] pry(main)* um texto grande
[1] pry(main)* com quebras de linhas
[1] pry(main)* inseridas aqui
[1] pry(main)* EOS
=> "um texto grande\ncom quebras de linhas\ninseridas aqui\n"
[2] pry(main)> puts texto_longo
um texto grande
com quebras de linhas
inseridas aqui
=> nil
```

Por default todas as strings são em padrão UTF-8, que significa um padrao para caracteres, simbolos de diferente idiomas.


## Operadores em Strings

A classe String possui diversos metódos para manipulação de strings, sendo apenas alguns:


- .leght ou .size => retorna o comprimento da string  
- .concat ou + => concatena strings  
- .strip => remove espaços em branco no início e no final da string  
- .upcase e .downcase => converte letras para maiúsculas ou minúsculas  
- .include? => verifica se a string contém uma string especifica  
- .split => divide a string em um array de substrings com base em um delimitador
</li>


## Symbols

É sempre declarada com ":" tornando possível reutiliza-los em todo o código, reduzindo o consumo de memória, e melhorando a performance, porque não é necessário alocar memória repetidamente para representar o mesmo nome em diferentes partes do código. 

São frequentemente usados como chaves em hashes (tabelas associativas) e para representar nomes de métodos, atributos e outras identificações internas.


## Arrays

Em Ruby, um array é uma instância da classe Array que herda diversos métodos e comportamentos. São coleções ordenadas de elementos que podem conter diferentes tipos de dados, acessados por índices inteiros, e oferecem métodos flexíveis para adicionar, remover e manipular elementos.


## Módulo Emumerable

Incluído na classe Array, o módulo Enumerable é um conjunto de métodos que tornam a manipulação de dados em arrays mais simples e legível. 

Esses métodos permitem que você itere, filtre, transforme e faça outras operações comuns em arrays, alguns deles incluem **each**, **map**, **select**, **reduce**, **sort**, entre outros. 

Documentation: https://ruby-doc.org/core-2.7.4/Enumerable.html

</sub>*Módulo: é como uma caixa que você pode colocar coisas relacionadas. Imagine um módulo "Matemática" e nele coloca todas as funções matemáticas que precisa, como "soma" e "subtração"... Com essa caixa "Matemática" é possível usá-la em diferentes partes do seu programa sempre que precisar, sem reescrevê-las várias vezes.*</sub>

## Hash

Declarada entre chaves, Hash é uma coleção de pares chave-valor facilitando o armazenamento e recuperação de dados de forma eficiente. São frequentemente usados para representar dados estruturados.

Hash também inclui todos os metódos do modulo Enumerable, sendo que no bloco será recebido dois parametros, chave e valor.

### Diferenças entre hashes Ruby e objetos em Node.js:

Os hashes em Ruby e os objetos em Node.js (JavaScript) têm algumas semelhanças em termos de funcionalidade, pois ambos são usados para armazenar e recuperar dados associados a chaves. No entanto, existem diferenças fundamentais em como eles funcionam e como são implementados:

1 - **Sintaxe e Notação**:

- Em JavaScript (Node.js), os objetos são criados usando a sintaxe { chave: valor } ou new Object(). As chaves são sempre strings.

2 - **Tipos de Dados**:

- Em Ruby, as chaves de um hash podem ser símbolos, strings ou qualquer outro tipo de dado.
- Em JavaScript, as chaves de um objeto são sempre strings.

3 - **Acesso a Chaves e Valores**:

- Em Ruby, você pode acessar as chaves e valores de um hash de várias maneiras, incluindo hash[chave] ou métodos como keys e values.
- Em JavaScript, você acessa as propriedades de um objeto usando a notação de ponto (obj.propriedade) ou notação de colchetes (obj['propriedade']).

4 - **Comportamento de Herança**:

- Em JavaScript, os objetos podem herdar propriedades e métodos de outros objetos por meio de seu protótipo.
- Em Ruby, os hashes não têm o conceito de herança embutido.


## Range

Um Range representa um intervalo ou sequência de valores entre um início e um fim. É uma estrutura que descreve uma série de valores que podem ser números, caracteres ou até mesmo datas.

# Módulo 5 - Funções, Blocks e Lambdas

## Parâmetros Default

Parâmetros default permitem definir valores padrão para parâmetros de um método, sendo esses valores usados quando nenhum valor for fornecido ao chamar o método.

## Parâmetros Variáveis

Permitem que você defina métodos que podem aceitar um número variável/diferente de argumentos. Isso é feito usando o operador * antes do nome do parâmetro.

Vale ressaltar que esses parâmetros são coletados em uma lista (array), dentro da variavel definida por "*", também chamada de "splat".

IMPORTANTE: Precisa ser o ultima posição de parametro declarado em um metodo.


## Parâmetros com palavra-chave

São métodos definidos com parametros como chave:valor, sendo que essas chaves podem ou não ter valores definidos por default. 

Uma vez que o metodo possui mais de um chave definida, a ordem em que é chamada não importa, pois é possível identificá-la, sendo menos dependente da ordem e especialmente útil quando há muitos parâmetros em um método.

Vale ressaltar que ao definir um método o parametro de chaves devem ser as ultimas posições.

## Blocks

Blocks são trechos de código anônimos que podem ser passados como argumentos para métodos.

Eles são delimitados por chaves {} ou pelas palavras-chave 'do' e 'end'.

São frequentemente usados com métodos de iteração para executar lógica personalizada em coleções de dados.

Os blocks têm limitações, como:

- **Escopo de Variáveis**: têm um escopo limitado e não podem acessar variáveis locais de seu ambiente externo sem passá-las como argumentos.

- **Reutilização Limitada**: são mais adequados para lógica de curta duração e não podem ser armazenados para reutilização em diferentes partes do código.

- **Não São Objetos**: não são objetos em si, ao contrário dos Procs, o que limita sua flexibilidade para serem passados como argumentos ou armazenados.

- **Não Podem Ser Retornados**: não podem ser retornados de métodos, o que os impede de serem usados em funções de ordem superior.

## Blocks e Proc

O Proc, diferente do Block oferecem maior flexibilidade e reutilização, sendo objetos que podem ser atribuídos a variáveis e usados dinamicamente em diferentes partes do código, que podem ser passados como argumentos para métodos ou chamados diretamente como uma função.

## Lambdas

Lambdas são objetos que representam blocos de código anônimos que podem ser armazenados em variáveis e chamados como métodos. Eles são semelhantes e instanciados do Procs, mas com algumas diferenças comportamentais, como tratamento estrito de argumentos.

### Diferenças entre Lambdas e Procs

- **Tratamento de Argumentos**: Lambdas fazem um tratamento mais rigoroso de argumentos do que Procs. Isso significa que as lambdas verificam o número correto de argumentos, enquanto os Procs são mais flexíveis e podem ignorar argumentos extras ou fornecer valores padrão.

Exempĺo com lambda:
```ruby
minha_lambda = lambda { |x, y| x + y }
minha_lambda.call(3, 4)      # Resultado: 7
minha_lambda.call(3)         # Erro: wrong number of arguments (given 1, expected 2)
```
Exemplo com Proc:

```ruby
minha_lambda = lambda { |x, y| x + y }
minha_lambda.call(3, 4)      # Resultado: 7
minha_lambda.call(3)         # Erro: wrong number of arguments (given 1, expected 2)
```

- **Comportamento com "return"**: a lambda não interrompe a execução do método que a envolve, enquanto o Proc interrompe a execução e retorna imediatamente ao chamador do método. 

Exemplo com lambda: 
```ruby
def my_method
  minha_lambda = lambda { return "Olá" }
  minha_lambda.call
  return "Mundo"
end

puts my_method  # Resultado: "Mundo"
```

Exemplo com Proc:

```ruby
def my_method
  meu_proc = Proc.new { return "Olá" }
  meu_proc.call
  return "Mundo"
end

puts my_method  # Resultado: "Olá"
```

## Constantes

As constantes são valores que não devem ser modificados após serem definidos, ou seja, valores que não mudam durante a execução do programa.

As constantes são escritas em letras maiúsculas com palavras separadas por sublinhados (snake_case) e são acessadas com seu nome em letras maiúsculas.

Em Ruby, é uma convenção criar um arquivo chamado constants.rb para armazenar constantes globais, o que melhora a organização e reutilização das constantes em todo o projeto, evitando duplicações e facilitando a manutenção.

_Obs.: Se você tentar modificar uma constante, Ruby emitirá um aviso, mas a modificação ainda será possível, apesar de que  a convenção é que elas não devem ser modificadas após a definidas._


## Módulos

Como Ruby não permite herança múltipla de classes, os módulos permitem compartilhar métodos entre várias classes sem herdar de várias classes ao mesmo tempo, fornecem flexibilidade na organização do código e na reutilização de funcionalidades.

Podem ser incluídos (injetados) em classes, permitindo que os métodos do módulo sejam usados pelas instâncias da classe. Isso é conhecido como mixin.

Podem ser usados para criar namespaces separados no código, ajudando a evitar conflitos de nomes entre classes e métodos.

Permitem que você tenha classes com nomes iguais, desde que estejam em módulos diferentes, evitando conflitos de nomes.



# Módulo Final - Organizando Código e Recomendações

## Organizando seu código

Organização do código considerando estrutura de pastas, que podem variar dependendo das necessidades do projeto e das preferências da equipe de desenvolvimento. 

```csharp
meu_projeto/
│
├── app/                   // Funciona como o restante deste diretório. Basicamente, organiza os componentes da nossa aplicação. Mantém o MVC.
│
├── app/assets/            // Esta pasta contém arquivos estáticos necessários para a interface do aplicativo, agrupados em pastas com base em seu tipo.
│
├── app/controllers/       // Todos os arquivos de controle são armazenados aqui. Um controlador lida com todas as solicitações web do usuário.
│
├── app/helpers/           // Contém todas as funções auxiliares para ajudar o MVC.
│
├── app/mailers/           // Contém funções específicas para envio de e-mails na aplicação.
│
├── app/models/            // Contém os modelos e os dados armazenados no banco de dados da aplicação.
│
├── app/views/             // Esta pasta contém os modelos de exibição para preencher dados em nossa aplicação.
│
├── bin/                   // Basicamente, contém scripts Rails que iniciam seu aplicativo. Também pode conter outros scripts usados para configurar, atualizar ou executar o aplicativo.
│
├── config/                // Configura o banco de dados, rotas e mais da nossa aplicação.
│
├── db/                    // Contém o esquema atual do banco de dados e as migrações do banco de dados.
│
├── lib/                   // Contém módulos estendidos para sua aplicação.
│
├── log/                   // Contém arquivos de log da aplicação.
│
├── public/                // Contém arquivos estáticos e ativos compilados. Esta é a única pasta visível para o mundo.
│
├── test/                  // Contém testes de unidade, outros dispositivos de teste e fixtures.
│
├── tmp/                   // Contém arquivos temporários como cache e arquivos pid.
│
├── vendor/                // Contém todo o código de terceiros, como bibliotecas de fornecedores.
│
├── Gemfile                // Aqui são declaradas todas as dependências de gemas do seu aplicativo. É obrigatório, pois inclui gemas essenciais do Rails, entre outras gemas.
│
├── Gemfile.lock           // Mantém a árvore de dependências das gemas, incluindo todas as versões para o aplicativo.
│
├── README.md              // É um manual de instruções breve para sua aplicação.
│
├── Rakefile              // Localiza e carrega tarefas que podem ser executadas a partir da linha de comando.
│
├── config.ru             // Configuração Rack para servidores baseados em Rack usados para iniciar a aplicação.
```

[Opção 1: Ruby on Rails Directory Structure]()

[Opção 2: Rails Directory Structure Guide](https://github.com/jwipeout/rails-directory-structure-guide)

## Gerenciando dependências

O gerenciamento de dependências em Ruby é amplamente facilitado pelo RubyGems, o sistema de gerenciamento de pacotes padrão para Ruby. 

**Gemfile**: onde lista todas as dependências (gemas) necessárias para seu projeto.

**Gemfile.lock**: registra as versões específicas das gemas e suas dependências.

**bundle install**: Execute bundle install para instalar as gemas listadas no Gemfile, bem como suas dependências. Também resolve quais versões das gemas são compatíveis com as dependências de seu projeto.

O Bundler lê o Gemfile e o Gemfile.lock, garantindo uma configuração consistente e isolada.

**bundle update**: para atualizar gemas específicas.

**bundle outdated**: para verificar quais gemas têm atualizações disponíveis.

**Gemas Privadas**: pode incluir gemas privadas em seu Gemfile especificando a URL ou o repositório Git delas, o que facilita o uso de gemas personalizadas.

## Para onde ir depois de terminar esse curso

Recomendações de leituras:

[Learn Ruby The Hard Way](https://learnrubythehardway.org/book/) - Free  
[Metaprogramming Ruby 2](https://pragprog.com/titles/ppmetr2/metaprogramming-ruby-2/) - Free  
[Ruby On Rails Tutorial (Rails 7)](https://www.railstutorial.org) - Pago  

Comandos basicos para utilizar uma aplicação em diferentes servidores: Linux, Mac:  
[Learn Enough Command Line to Be Dangerous](https://www.learnenough.com/command-line-tutorial) - Free


Fim
