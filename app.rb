require 'sinatra'
require './lib/ahorcado'

@@ahorcado = nil

get '/' do
  @@ahorcado = Ahorcado.new
  erb :index
end

post '/confirmar' do
  letra = params[:letra]
  @resultado = @@ahorcado.intento(letra)
  
  erb :index
end


