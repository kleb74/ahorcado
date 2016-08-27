require './lib/ahorcado'

describe 'Retornar Longitud palabra' do |variable|
  it 'El modelo retorna la palabra' do
    ahorcado = Ahorcado.new
    expect(ahorcado.getLongitudPalabra).to be == 8
  end 
end