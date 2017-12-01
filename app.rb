require 'sinatra'
require './config'
require './lib/generadorPalabra'
require './lib/ahorcado.rb'

get '/' do
	generador = GeneradorPalabra.new
	session['palabras']= generador.obtenerPalabra
	session['vidas']= generador.obtenerVidas
	session['letrasBuscadas'] = nil
	erb :ahorcado
end

post '/ingresarLetra' do
	ahorcado = Ahorcado.new session['palabras'][1]
	if session['letrasBuscadas'] == nil
		letrasProbadas = ['']
	else
		letrasProbadas = session['letrasBuscadas']
	end
	letrasProbadas.push params['letraProbar']
	session['letrasBuscadas'] = letrasProbadas
	session['palabras'][0]=ahorcado.validarLetra letrasProbadas
	erb :ahorcado
end