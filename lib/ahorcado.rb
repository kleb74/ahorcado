class Ahorcado
  def initialize
    @palabra = "ahorcado"
    @map = [{"a" => false}, {"h" => false}, {"o" => false},
     {"r" => false}, {"c" => false}, {"a" => false},
      {"d" => false}, {"o" => false}]
  end

  def getLongitudPalabra
    @palabra.length
  end

  def intento(letra)

    if @palabra.include? letra
      @map.each { |par|
        if par.keys.include? letra
          par[letra] = true
        end
      }
      return true
    end
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

end