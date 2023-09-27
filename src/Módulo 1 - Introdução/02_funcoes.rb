# Funçoes e escopo

preco = 50 # escopo global

def muda_preco
  preco = 100 # escopo local
  puts preco
end

muda_preco
puts preco

# O escopo local não vai afetar o escopo global
