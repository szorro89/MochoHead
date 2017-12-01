
class GeneradorPalabra

	attr_accessor :vidas

  	def initialize
		@palabras = ["mariposa","caballo","vaca","perro"]
		@vidas = 6	
	end
     
   	def obtenerPalabra
	   	asteriscos="--------------------------------------------------------"
	   	[asteriscos[1,@palabras[0].size], @palabras[0]]
   	end

   	def obtenerVidas
   		@vidas
   	end

   	def validarLetra letra
   		
   	end

   	def restarVida
   		@vidas -= 1
   	end
end