class Ahorcado
  def initialize palabra = ""
		@palabra = palabra
		@rayitas = "-"*@palabra.size
	end
     
   def validarLetra letras
    for i in(0..letras.size-1)
    	for j in(0..@palabra.size-1)
    		if(letras[i]==@palabra[j])
    			@rayitas[j]=letras[i]
    		end
    	end
    end
    return @rayitas
   	
   end
end