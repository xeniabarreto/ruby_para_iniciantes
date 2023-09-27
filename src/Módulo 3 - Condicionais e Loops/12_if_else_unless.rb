
# If na mesma linha:

a, b = 2, 1
if a > b then puts "A > B" else puts "B > A" end


# If ternario:
# condição ? código_se_verdadeiro : código_se_falso

idade = 18
mensagem = idade >= 18 ? "Maior de idade" : "Menor de idade"
puts mensagem

# Elsif

idade = 18

if idade < 18
  puts "Menor de idade"
elsif idade == 18
  puts "Tem 18 anos"
else
  puts "Maior de idade"
end

# Unless

idade = 15

unless idade >= 18
  puts "Menor de idade"
end

# Else com Unless:

idade = 20

unless idade >= 18
  puts "Menor de idade"
else
  puts "Maior de idade"
end
