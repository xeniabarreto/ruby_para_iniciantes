# Usando each para iterar uma lista
[1, 2, 3, 4, 5].each { |i| puts i }

# Usando map para transformar uma lista nova lista, no caso multiplicar
lista = [1, 2, 3, 4, 5]
doubled = lista.map { |num| num * 2 }

puts "lista original " + lista.to_s
puts "lista nova com map " + doubled.to_s

# Usando select para filtrar elementos, no caso, numero pares
puts even_numbers = [1, 2, 3, 4, 5].select { |num| num.even? }

# Usando select para filtrar elementos, no caso, numero ímpares
puts odd_numbers = [1, 2, 3, 4, 5].select { |num| num.odd? }

# Usando reduce (também conhecido como inject) para calcular um resultado, criando uma nova lista
puts sum = [1, 2, 3, 4, 5].reduce(0) { |resultado, proximo_valor| resultado + proximo_valor }


#Documentation: https://ruby-doc.org/core-2.7.4/Enumerable.html