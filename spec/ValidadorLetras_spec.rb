require './lib/ahorcado.rb'

describe Ahorcado do
	it "si ingreso la a debe marcar en la palabra todas las letras a" do
		ahorcado = Ahorcado.new "mariposa"
		expect(ahorcado.validarLetra ["a"]).to eq "-a-----a"
	end
	it "si ingreso la b no debe cambiar las lineas continuas" do
		ahorcado = Ahorcado.new "mariposa"
		expect(ahorcado.validarLetra ["b"]).to eq "--------"
	end
	it "si ingreso la a y la m debe mostrar las m y a en la palabra" do
		ahorcado = Ahorcado.new "mariposa"
		expect(ahorcado.validarLetra ["a","m"]).to eq "ma-----a"
	end
	it "si ingreso la a, m, p y b debe mostrar las m,a,p en la palabra" do
		ahorcado = Ahorcado.new "mariposa"
		expect(ahorcado.validarLetra ["a","m","p","b"]).to eq "ma--p--a"
	end
end