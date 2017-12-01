require './lib/ahorcado.rb'

describe Ahorcado do
	it "si ingreso la a debe marcar en la palabra todas las letras a" do
		ahorcado = Ahorcado.new "mariposa"
		expect(ahorcado.validarLetra "a").to eq "_a_____a"
	end
end