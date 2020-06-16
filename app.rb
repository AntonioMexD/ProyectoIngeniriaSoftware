require 'sinatra'
require './lib/TorosVacas.rb'
require './lib/cronometro.rb'
require './lib/jugador.rb'
require './lib/jugadores.rb'

def initialize()
    @jugadores=Jugadores.new
end

get '/' do 
    $intentos_realizados = []   
    $torovaca=ToroVaca.new("")
    $jugador1=Jugador.new
    $jugador2=Jugador.new
    erb :index
end
get '/configuracion' do
    erb :configuracion
end

post '/juego' do
    erb :juego
end

post '/intento' do
     erb :intento
end

get '/ranking' do
    erb :ranking
end


get '/juego' do
    erb :juego
end

get '/intento' do
    erb :intento
end
get '/resultadoganaste' do
    erb :resultadoganaste
end
get '/resultadoperdiste' do
    erb :resultadoperdiste
end

