require 'sinatra'
require './config'
require './lib/generadorPalabra'
require './lib/ahorcado.rb'

get '/' do
	generador = GeneradorPalabra.new
	session['palabras']= generador.obtenerPalabra
	session['vidas']= generador.obtenerVidas
	erb :ahorcado
end

post '/ingresarLetra' do

	ahorcado = Ahorcado.new session['palabras'][1]
	session['palabras'][0]=ahorcado.validarLetra ["a"]
	erb :ahorcado
end