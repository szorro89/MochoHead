require './lib/generadorPalabra.rb'

describe GeneradorPalabra do
	it "Generador Palabra que sea " do
		generador = GeneradorPalabra.new
		expect(generador.obtenerPalabra).to eq ["********","mariposa"]
	end
end