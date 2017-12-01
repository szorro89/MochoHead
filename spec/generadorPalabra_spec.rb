require './lib/generadorPalabra.rb'

describe GeneradorPalabra do
	it "Generador Palabra que sea " do
		generador = GeneradorPalabra.new
		expect(generador.obtenerPalabra).to eq ["--------","mariposa"]
	end

	it "Si falla el intento, se pierde una vida" do
		generador = GeneradorPalabra.new
		expect(generador.restarVida).to eq 5
	end
end