class Hogar {
	var property mugre
	var property confort
	
	method esBueno() = mugre <= confort/2
}

class Huerta {
	var property capacidadProduccion
	method esBueno() = capacidadProduccion > reguladorHuerta.nivelMinimo()
}
	
object reguladorHuerta {
	var property nivelMinimo = 20
}


class Mascota {
	var property nivelSalud
	const nivelMinimo = 250
	method esBueno() = nivelSalud > nivelMinimo
}

class Barrio {
	var property elementos = []
	
	method esCopado() = self.elementosBuenos() > self.elementosMalos()
	
	method elementosBuenos() = elementos.count { e => e.esBueno() }
	method elementosMalos() = elementos.size() - self.elementosBuenos()
}
