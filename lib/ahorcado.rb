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
    @palabra.include? letra
  end

  def casilleros
    r= []
    @map.each{ |hash|
      hash.map { |k,v|
        if not v
          r.push("_ ")
        else
          r.push k
        end
      }
    }
    
    r.join("")
  end

end