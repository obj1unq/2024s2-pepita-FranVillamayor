object pepita {
	var energia = 100
	
	method comer(comida) {
		energia = energia + comida.energiaQueAporta()
	}
	
	method volar(distancia) {
		energia = energia - 10 - distancia
	}
	
	method energia() {
		return energia
	}
}

object alpiste {
	method energiaQueAporta() {
		return 20
	}
}

object manzana {
	var madurez = 1
	const base = 5
	
	method madurez() {
		return madurez
	}
	
	method madurez(_madurez) {
		madurez = _madurez
	}
	
	method madurar() {
		self.madurez(madurez + 1)
	}
	
	method energiaQueAporta() {
		return base * madurez
	}
	
}

object pepon {
  var energia = 30

  method comer(comida) {
	energia = energia + (comida.energiaQueAporta() / 2)
  }

  method volar(distancia) {
	energia = energia - 20 - distancia * 2 
  }
}


object roque {
	var aveActual = pepita
	var contadorDeCenas = 0

  method cambiarAve(nuevaAve) {
	aveActual = nuevaAve
	contadorDeCenas = 0 // vuelve a 0 cuando cambia de ave
  }

  method alimentar(comida) {
	aveActual.comer(comida)
	contadorDeCenas = contadorDeCenas + 1 //suma uno el contador cada vez que se alimenta
  }

  method cenas() {
	return contadorDeCenas
  }

}






