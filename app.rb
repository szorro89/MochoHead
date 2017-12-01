require 'sinatra'
require './config'
require './lib/generadorPalabra'


get '/' do
	generador = GeneradorPalabra.new
	#session['palabra']= generador.obtenerPalabra
	session['palabra']= "xxxxx"
	erb :ahorcado
end

post '/ingresarLetra' do
	#bucar la palabra
	erb :ahorcado
end