# Loop part 2

# Primeira forma
["laranja", "maça", "uva"].each do |fruta|
  puts fruta
end

# Segunda forma
["laranja", "maça", "uva"].each { |fruta| puts fruta }

# outro exemplo da segunda forma:

10.upto(20) { |i| puts i }


# Loop infinito
# Necesssário break para interromper

loop do
  puts "loop infinito"
  break  
end

# outro exemplo:

contador = 0

loop do
  puts "loop infinito até 3"
  contador += 1
  break if contador == 3
end
