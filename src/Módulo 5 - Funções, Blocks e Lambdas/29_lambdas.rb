# Definindo e chamando uma lambda:

minha_lambda = lambda { |x, y| x + y }
resultado = minha_lambda.call(3, 4)  # Resultado: 7
puts resultado

# Usando uma lambda com o método map:

dobrar = lambda { |numero| numero * 2 }
valores = [1, 2, 3, 4]
dobrados = valores.map(&dobrar) # dobrados agora contém [2, 4, 6, 8]
puts dobrados

# Outros
lamb = lambda { puts "sou uma lambda"}
puts lamb.class
lamb.call

# Outra forma de definir
lamd2 =  -> () { puts "Sou uma outra lambda" }
puts lamb.class
lamd2.call



