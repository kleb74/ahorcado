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
  it 'El modelo retorna el las letras utilizadas' do
    ahorcado = Ahorcado.new
    expect(ahorcado.intento("a")).to be == true
    expect(ahorcado.letras_utilizadas).to be == "a"
  end

  it 'El modelo retorna gano cuando acerto todas las letras' do
    ahorcado = Ahorcado.new
    expect(ahorcado.intento("a")).to be == true
    expect(ahorcado.intento("h")).to be == true
    expect(ahorcado.intento("o")).to be == true
    expect(ahorcado.intento("r")).to be == true
    expect(ahorcado.intento("c")).to be == true
    expect(ahorcado.intento("d")).to be == true
    expect(ahorcado.gano).to be == true
  end
end

describe 'Retornar string de casilleros' do
  it 'el modelo retorna el string de casilleros' do
    ahorcado = Ahorcado.new
    expect(ahorcado.casilleros).to be == "_ _ _ _ _ _ _ _ "
  end

  it 'el modelo retorna el string de casilleros despues de un intento valido' do
    ahorcado = Ahorcado.new
    ahorcado.intento("a")
    expect(ahorcado.casilleros).to be == "a _ _ _ _ a _ _ "
  end

end

describe 'Retornar vidas restantes' do
  it 'el modelo retorna vidas restantes' do
    ahorcado = Ahorcado.new
    expect(ahorcado.vidas).to be == 6
  end
end