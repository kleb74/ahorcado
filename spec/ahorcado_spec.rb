require './lib/ahorcado'

describe 'Retornar Longitud palabra' do |variable|
  it 'El modelo retorna la palabra' do
    ahorcado = Ahorcado.new
    expect(ahorcado.getLongitudPalabra).to be == 8
  end
end

describe 'Retornar resultado intento' do
  it 'El modelo retorna el resultado del intento exitoso' do
    ahorcado = Ahorcado.new
    expect(ahorcado.intento("a")).to be == true
  end

  it 'El modelo retorna el resultado del intento fallido' do
    ahorcado = Ahorcado.new
    expect(ahorcado.intento("z")).to be == false
  end
end

describe 'Retornar string de casilleros' do
  it 'el modelo retorna el string de casilleros' do
    ahorcado = Ahorcado.new
    expect(ahorcado.casilleros).to be == "_ _ _ _ _ _ _ _ "
  end
end