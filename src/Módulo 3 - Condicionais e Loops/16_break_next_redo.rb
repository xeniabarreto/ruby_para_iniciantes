
# Imprime ate maçã
["laranja", "maça", "uva"].each do |fruta|
  puts fruta
  break if fruta == "maça"
end

# Imprime todos, exceto maçã
["laranja", "maça", "uva"].each do |fruta|
  next if fruta == "maça"
  puts fruta
end

# Reinicia o loop se o input for maior que 10
loop do
  puts "digite um número: "
  # transformando em inteiro
  input = gets.to_i
  redo if input > 10
  break
end
