object tom {
  var energia = 50
  //method energia() =  energia
  method correr(metros) {
    energia -= (metros / 2)
  }
  method comer(raton) {
    energia += 12 + raton.peso()
  }
  method velocidadMaxima() = 5 + (energia / 10)

  method puedeCazarADistancia_(distancia){
    return energia >= distancia / 2
  }

  method cazar(raton, distancia) {
    if (self.puedeCazarADistancia_(distancia)){
        self.correr(distancia)
        self.comer(raton)
    }
  }  
}

object jerry {
  var anios = 2
  method peso() = anios * 20
  method cumplirAnios() {
    anios += 1
  }
}

object nibbles {
  method peso() = 35
}

object perez {
    var cantidadDeDientesRecolectados = 0
    var fondosDisponibles = 10000
  method peso() = 15 + cantidadDeDientesRecolectados * 0.2
  method canjearDientes(){
    cantidadDeDientesRecolectados += 1
    fondosDisponibles -= 100
  }
}