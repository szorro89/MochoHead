require 'sinatra'
require './config'
require './lib/generadorPalabra'
require './lib/ahorcado.rb'

get '/' do
	generador = GeneradorPalabra.new
	session['palabras']= generador.obtenerPalabra
	session['vidas']= generador.obtenerVidas
	session['letrasBuscadas'] = nil
	session['ahorcado'] = Ahorcado.new session['palabras'][1]
	erb :ahorcado
end

post '/ingresarLetra' do
	ahorcado=session['ahorcado']
	if session['letrasBuscadas'] == nil
		letrasProbadas = []
	else
		letrasProbadas = session['letrasBuscadas']
	end
	letrasProbadas.push(params['letraProbar'])
	session['letrasBuscadas'] = letrasProbadas
	session['palabras'][0] = ahorcado.validarLetra session['letrasBuscadas']
	puts session['palabras'][0]
	puts session['letrasBuscadas'].class
	puts ahorcado.validarLetra session['letrasBuscadas']
	erb :ahorcado
end