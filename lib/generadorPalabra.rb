
class GeneradorPalabra
  def initialize
		@palabras = ["mariposa","caballo","vaca","perro"]	
	end
     
   def obtenerPalabra
	   	asteriscos="********************************************************"
	   	asteriscos[1,@palabras[1].size+1]  
   end
end