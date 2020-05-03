
# Preguntar al usuario por un indice
puts "Indique el indice"
print "> "
input = gets.chomp.to_i

#Defino array y contador para el while siguiente
nombres = []
i = 1

#Pido al usuario la cantidad de nombres según el índice ingresado al principio
while i <= input do 
  if i == 1 
    puts "#{i}. Agregue un nombre:"
  else 
    puts "#{i}. Agregue otro nombre:"
  end
  print "> "
   nombres.push(gets.chomp)
   i += 1
end

#Mensaje de cuantas personas ingresó el usuario
puts "Se han ingresado #{input} personas:"

#Ordeno el array de mayor a menor y defino un contador
nombres.sort! { |a,b| b <=> a }
j = 0

#Imprimo información de cada elemento del array
nombres.each do |nombre|
  j += 1
  puts "#{j}. #{nombre.upcase} (#{nombre.length})"
end



#INSTRUCCIONES DEL EJERICIO
=begin
# El usuario responde 4

# Crear un código que permita a un usuario agregar tantos nombres como haya mencionado anteriormente (en este ejemplo: 4)


# Si es mayor a 1, luego tener textos distintos indicando el indice y la palabra "otro" (! prestar atención al formato)
"1. Agregue un nombre:"
"> "
# El usuario ingresa "niCo"
"2. Agregue otro nombre:"
"> "
# El usuario ingresa "fER"
"3. Agregue otro nombre:"
"> "
# El usuario ingresa "fElI"
"4. Agregue otro nombre:"
"> "


# El usuario ingresa "Santi"
# Revertir los resultados, y presentarlos todos en mayúscula indicando cuantos caracteres tiene el nombre usando parantesis
"Se han ingresado 4 personas:"
"1. SANTI (5)"
"2. FELI (4)"
"3: FER (3)"
"4: NICO (4)"
=end




