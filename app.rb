require 'sinatra'
require './lib/ahorcado'



get '/' do
  @@ahorcado = Ahorcado.new
  erb :index
end

post '/confirmar' do
  "acerto"
  #erb :index
end


