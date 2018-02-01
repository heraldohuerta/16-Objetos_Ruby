###############################################################
###########Ejercicio 1: Sintaxis.
###############################################################
class Anything
  attr_accessor :a
  def foo
    @a = 5
  end
  def bar
    @a += 1
  end
end

any = Anything.new
any.foo
any.bar
puts any.a
###############################################################
###########Ejercicio 2: Sintaxis.
###############################################################
class Car
  attr_accessor :model,:year
  def initialize(model,year)
    @model = model
    @year = year
  end
end
car = Car.new('Camaro', 2016)
puts "Mi auto favorito es un #{car.model} del año #{car.year}!"

###############################################################
###########Ejercicio 3: Sintaxis.
###############################################################
class Store
  attr_accessor :name
  def initialize(name)
    @name = name
  end
end
store = Store.new('Tienda 1')
puts store.name


###############################################################
###########Ejercicio 4: Constructor con argumentos.
###############################################################

propiedades = {nombre: 'Beethoven', raza: 'San Bernardo', color: 'Café'}

class Dog
  def initialize(hash)
    @hash = hash
  end

  def ladrar
    puts "#{@hash[:nombre]} esta ladrando!"
  end
end
perro1 = Dog.new(propiedades)
perro1.ladrar

###############################################################
###########Ejercicio 5: Traductor entero a código Morse
###############################################################

class Morseable
  def initialize(number)
    @number = number
    @hash = {0=>'-----',1=>'.----',2=>'..---',3=>'...--',4=> '....-',5=> '.....', 6=> '-....',7 => '--...',8 => '---..',9=> '----.'}
  end

  def generate_hash(number)
     @hash[number]
  end
  def to_morse
    self.generate_hash(@number)
  end
end
m = Morseable.new(3)
puts m.to_morse
puts "\n"



# ###############################################################
# ###########Ejercicio 6: Arrays y objetos
# ###############################################################
#
# Arrays y strings
# nombres = ["Violeta", "Andino", "Clemente", "Javiera", "Paula", "Pia", "Ray"]
#
# #Extraer todos los elementos que excedan mas de 5 caracteres.
# puts "*********Extraer todos los elementos que excedan mas de 5 caracteres***************************************"
# nombres.each { |nom| puts nom  if nom.length > 5  }
#
# #Realizar el ejercicio utilizando el método .select
# puts "*********Realizar el ejercicio utilizando el método .select************************************************"
# puts nombres.select {|v| v.length > 5}   #=> ["a", "e"]
#
# #Utilizando .map crear una arreglo con los nombres en minúscula
# puts "********Utilizando .map crear una arreglo con los nombres en minúscula**************************************"
# salida = []
# salida = nombres.map(&:downcase)
# print salida
# puts "\n\n"
# #Utilizando .select para crear un arreglo con todos los nombres que empiecen con P
# puts "********Utilizando .select para crear un arreglo con todos los nombres que empiecen con P******************"
# salida= []
# salida = nombres.select {|v| v[0] == 'P'}   #=> ["a", "e"]
# print salida
# puts "\n\n"
#
# #Utilizando .map crear un arreglo único con la cantidad de letras que tiene cada nombre.
# puts "********Utilizando .map crear un arreglo único con la cantidad de letras que tiene cada nombre.**************"
# salida = []
# salida = nombres.map(&:length)
# print salida
# puts "\n\n"


###############################################################
###########Ejercicio 6: Arrays y objetos
###############################################################

class Student
  attr_reader :notas, :name
  def initialize(name, notas)
      @name = name
      @notas = notas
  end
end

nombres = %w(Alicia Javier Camila Francisco Pablo Josefina)

# 1. Iterar los nombres para crear un nuevo arreglo de objetos de Student.
puts "# 1. Iterar los nombres para crear un nuevo arreglo de objetos de Student.***************************************************************"
objetos_alumnos  = []
objetos_alumnos = nombres.map{ |nom| Student.new(nom,[]) }
print objetos_alumnos
puts "\n\n"

# 2. Modificar el objeto para que pueda recibir una nota del alumno.
puts "# 2. Modificar el objeto para que pueda recibir una nota del alumno.***************************************************************"
objetos_alumnos  = []
notas = [1,2,3,4,5,6,7,8,10]
objetos_alumnos = nombres.map{ |nom| Student.new(nom,notas.sample(10))}
print objetos_alumnos
puts "\n\n"

# 3. Agregar un getter para la nota
puts "# 3. Agregar un getter para la nota***************************************************************"
objetos_alumnos  = []
objetos_alumnos = nombres.map{ |nom| Student.new(nom,notas.sample(10))}
print objetos_alumnos
puts "\n\n"
print objetos_alumnos[0].notas   #Se agrega en la clase el getter  attr_reader
puts "\n\n"

# 4. Modificar la iteración para asignar notas incrementales de 1 en adelante.
puts "# 4. Modificar la iteración para asignar notas incrementales de 1 en adelante.***************************************************************"
objetos_alumnos  = []
notas_en_aumento = 0
objetos_alumnos = nombres.map{ |nom| notas_en_aumento+=1 ; Student.new(nom,notas_en_aumento) }
print objetos_alumnos
puts "\n\n"


# 5. Utilizar un map para obtener todas las notas de los alumnos a partir del arreglo de estudiantes.
puts "# 5. Utilizar un map para obtener todas las notas de los alumnos a partir del arreglo de estudiantes.***********************************"
objetos_alumnos  = []
notas = [1,2,3,4,5,6,7,8,10]
objetos_alumnos = nombres.map{ |nom| Student.new(nom,notas.sample(10))}
objetos_alumnos.each { |alum|  puts "El alumno #{alum.name} tiene las siguientes notas #{alum.notas}"}
puts "\n\n"


###############################################################
###########Ejercicio 7: Objeto y arrays desde cero
###############################################################

# 1. Crear la clase punto, un punto tiene una posición x y una posición  y.
# 2. Crear métodos getter y setter para los atributos del punto.
# 3. Crear 10 puntos al azar
class Punto
  attr_accessor :x, :y
  def initialize(x,y)
    @x = x
    @y = y
  end
end

puntos = [1,2,3,4,5,6,7,8,9,10]

puntos_arr = []
10.times do
  puntos_arr << Punto.new(puntos.sample, puntos.sample)
end
print puntos_arr
puts "\n\n"


###############################################################
###########Ejercicio 08 Mascota Virtual:
###############################################################
class MyPet
   def initialize name
      @name = name
      @sleep = false
      @satisfied = 10 #  Esta lleno
      @fullIntestine = 0 # No necesita ir
      puts @name + '  nace  '
    end


#####SE AGREAGAR ESTE METODO
    def walk
      puts 'Haces caminar a ' + @name + '.'
      @satisfied -= 2
      @fullIntestine  = 2
      timeLapse
    end

#####SE AGREAGAR ESTE METODO
    def eat
      puts "#{@name} Esta comiendo"
      @satisfied += 2
      @fullIntestine  += 2
      timeLapse
    end

#####SE AGREAGAR ESTE METODO
    def sleep
      @sleep = true    #SE INICIALIZA VARIABLE SLEEP a TRUE
      puts "#{@name} Esta Durmiendo"
      @satisfied -= 2
      @fullIntestine  += 2
      timeLapse
    end

  def timeLapse
      if @satisfied > 0
        #  Mueve el alimento del estomago al intestino.
        @satisfied      = @satisfied      - 1
        @fullIntestine  = @fullIntestine  + 1
      else  #  Nuestro mascota esta hambrienta!
        if @sleep
          @sleep = false
          puts '¡Se despierta de repente!'
        end
        puts '¡' + @name + ' esta hambriento!  En su desesperacion, ¡Murio de Hambre!'
        exit  #  Sale del programa.
      end
      if @fullIntestine  >= 10
        @fullIntestine  = 0
        puts '¡Uy!  ' + @name + ' tuvo un accidente...'
      end
      if hungry?
        if @sleep
          @sleep = false
          puts '¡Se despierta de repente!'
        end
        puts 'El estomago de ' + @name + 'retumba...'
      end
      if needToGo?
        if @sleep
          @sleep = false
          puts 'Se despierta de repente!'
        end
        puts @name + ' hace la danza del baño...'
      end
    end

#####SE AGREAGAR ESTE METODO
    def hungry?
       @satisfied <=2 ? true : false
    end
#####SE AGREAGAR ESTE METODO
    def needToGo?
       @fullIntestine == 10
    end
end


puts "******************************************************************"
puts "**************************MASCOTA VIRTUAL*************************"
puts "******************************************************************"
puts "\n\n\n"
sw = true
mascota = MyPet.new 'PERRO'
while sw
  puts "\n\n\n"

  puts "Ingresar las siguietes opciones para poder jugar"
  puts "caminar"
  puts "dormir"
  puts "comer"
  accion = gets.chomp
  case accion
  when 'caminar'
    mascota.walk
  when 'dormir'
    mascota.sleep
  when 'comer'
    mascota.eat
  end
end
# Genera el método comer considerando que llenara su panza y pasara el tiempo.
# Genera el método dormir considerando que pasara el tiempo y vaciara su panza.
# Generar un menu para interactuar con tu mascota(alimentarlo, hacerlo dormir, salir a caminar)  debes poder iterar las opciones, hasta que, Si la mascota muere de hambre debe terminar el programa
