class Ahorcado
  def initialize palabra = ""
		@palabra = palabra
	end
     
   def validarLetra letra
    palabra=@palabra
	
	for i in(0..palabra.size-1)
	    if(palabra[i] == letra)
	    	palabra[i]=letra
	    else
		palabra[i]="_"
	    end
	    i+=i
	end
	return palabra
   	
   end
end