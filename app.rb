require 'sinatra'
require './config'
require './lib/generadorPalabra'


get '/' do
	generador = GeneradorPalabra.new
	session['palabras']= generador.obtenerPalabra
	erb :ahorcado
end

post '/ingresarLetra' do
	#bucar la palabra
	erb :ahorcado
end