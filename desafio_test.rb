class Cartas
  attr_accessor :pinta, :numero
  def initialize(pinta = 0, numero = 0)
    @pinta = pinta
    @numero = numero
  end
end

def seleccionar(juego)
  pinta = ['DIAMANTE','TREBOL','PICA','CORAZON']
  numero = ['As','dos','tres','cuatro','cinco','seis','siete','ocho','nueve','diez','J','Q','K']
  pinta_c =  pinta.sample
  numero_c =  numero.sample

    repetidas = 0
    juego.each{ |n|   repetidas+= 1 if ( n.pinta == pinta_c  && n.numero == numero_c ) }
    if repetidas > 2
        puts "***********CARTAS DUPLICADAS NUEVO LANZAMIENTO***********"
        seleccionar(juego)
    end

  x = Cartas.new(pinta_c,numero_c)
  juego.push(x)
end

def mostrar(juegos)
  puts ""
  puts "**********************************************************"
  puts "***************SELECCION DE CARTAS************************"
  puts "**********************************************************"
  juegos.each { |mano|  puts   "#{mano.numero} \t\t de  #{mano.pinta} "  }
end


sw = true
juego = []
while (sw==true)
 puts ""
 puts "**********************************************************"
 puts "***************JUEGO DE CARTAS****************************"
 puts "**********************************************************"
 puts "\n\n"
 puts "Digite <jugar> para seleccion de cartas"
 puts "Digite <mostrar> para  ver cartas"
 puts "Digite <salir> para  ver cartas"
 jugar = gets.chomp
 case jugar
 when "jugar"
   juego = []
   5.times do seleccionar(juego) end
 when "mostrar"
   mostrar(juego)
 when "salir"
   sw=false
 end

end
