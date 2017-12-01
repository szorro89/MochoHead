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
	#bucar la palabra



	erb :ahorcado
end