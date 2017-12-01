class Ahorcado
  def initialize palabra = ""
		@palabra = palabra
	end
     
   def validarLetra letras
    palabra=@palabra

	#letras.each do |letra|
		for i in(0..palabra.size-1)
	    	if(!letras.include? palabra[i])
				palabra[i]="-"
	    	end
	    	i+=i
		end
	#end
	return palabra
   	
   end
end