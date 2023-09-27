cor = "verde"

case cor
when "vermelho"
  puts "A cor é vermelha."
when "verde"
  puts "A cor é verde."
when "azul"
  puts "A cor é azul."
else
  puts "A cor não é vermelha, verde nem azul."
end

# com intervalos:

idade = 25

case idade
when 0..17
  puts "Menor de idade"
when 18..64
  puts "Adulto"
else
  puts "Idoso"
end

# multiplas condições:
# 
dia = "segunda"

case dia
when "segunda", "terça", "quarta", "quinta", "sexta"
  puts "Dia útil"
when "sábado", "domingo"
  puts "Fim de semana"
else
  puts "Dia inválido"
end

# com condicionais:


nota = 85

case
when nota >= 90
  puts "A nota é A"
when nota >= 80
  puts "A nota é B"
when nota >= 70
  puts "A nota é C"
when nota >= 60
  puts "A nota é D"
else
  puts "A nota é F"
end
