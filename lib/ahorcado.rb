class Ahorcado
  def initialize
    @palabra = "ahorcado"
    @map = [{"a" => false}, {"h" => false}, {"o" => false},
     {"r" => false}, {"c" => false}, {"a" => false},
      {"d" => false}, {"o" => false}]
    @letras_utilizadas = []
    @vidas = 6
  end

  def getLongitudPalabra
    @palabra.length
  end

  def intento(letra)
    @letras_utilizadas.push(letra)
    if @palabra.include? letra
      @map.each { |par|
        if par.keys.include? letra
          par[letra] = true
        end
      }
      return true
    end
    @vidas -= 1
    false
  end

  def casilleros
    r= []
    @map.each{ |hash|
      hash.map { |k,v|
        if not v
          r.push("_ ")
        else
          r.push(k + " ")
        end
      }
    }
    
    r.join("")
  end

  def letras_utilizadas
    @letras_utilizadas.join(", ")
  end

  def gano
    @map.each { |hash|
      hash.map { |k,v|
        if not v
          return false
        end
      }
    }
    true
  end
  def vidas
    @vidas
  end
end