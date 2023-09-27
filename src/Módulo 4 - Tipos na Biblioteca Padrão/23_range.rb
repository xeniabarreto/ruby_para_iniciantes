# Range de números inteiros de 1 a 5 (inclusive)
um_a_cinco = 1..5
puts um_a_cinco

# Verificando a classe
puts um_a_cinco.class

# O método to_a é útil quando você deseja trabalhar com os elementos de um objeto em um formato de matriz para facilitar a iteração e manipulação.
puts um_a_cinco.to_a

# Range de caracteres de 'a' a 'e'
a_a_e = 'a'..'e'
puts a_a_e.to_a

# Verificando se um valor está dentro do Range
puts um_a_cinco.include?(3) # Saída: true
puts a_a_e.include?('f')    # Saída: false

# Iterando sobre os valores do Range
um_a_tres = 1..3
um_a_tres.each { |num| puts num }
um_a_tres.map { |num| puts num * num}

# Range de datas de hoje até 5 dias no futuro
require 'date'

hoje = Date.today
cinco_dias_no_futuro = hoje..(hoje + 5)
puts cinco_dias_no_futuro.to_a
# Saída: Array de datas a partir de hoje até 5 dias no futuro

# Range sendo usado em Case
puts "Digite um numero:"
entrada = gets.to_i

case entrada 
  when 1..2 then puts "entre 1 e 2"
  when 2..5 then puts "entre 2 e 5"
  else puts "nem uma opção válida"  
end
