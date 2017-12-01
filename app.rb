require 'sinatra'
require './config'

get '/' do
	erb :ahorcado
end

post '/ingresarLetra' do
	#bucar la palabra
	erb :ahorcado
end