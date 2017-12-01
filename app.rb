require 'sinatra'
require './config'
require './lib/generadorPalabra'
require './lib/ahorcado.rb'

get '/' do
	#generador = GeneradorPalabra.new
	session['juego'] = GeneradorPalabra.new
	session['palabras']= session['juego'].obtenerPalabra
	session['vidas']= session['juego'].obtenerVidas
	erb :ahorcado
end

post '/ingresarLetra' do
	#bucar la palabra
	session['juego'].restarVida
	session['vidas'] = session['juego'].obtenerVidas
	erb :ahorcado
end