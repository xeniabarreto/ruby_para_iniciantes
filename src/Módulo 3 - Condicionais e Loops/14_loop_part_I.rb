#def freio_acionado?
#  true
#end

while freio_acionado?
  puts "manter parado"  
end

puts "manter parado" while freio_acionado?

while freio_acionado? do puts "manter parado" end

until freio_acionado? do puts "manter parado" end

begin
  verificar_abs
  executar_parada
end while freio_acionado?

for i in [10,20,30]
  puts i
end

for i in 1..10
  puts i
end