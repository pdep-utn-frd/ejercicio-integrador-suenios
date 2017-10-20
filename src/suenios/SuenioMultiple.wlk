import suenios.Suenio.*

class SuenioMultiple {
	
	var suenios
	
	constructor(_suenios) {
		suenios = _suenios
	}

	method felicidad() {
		return suenios.sum({suenio => suenio.felicidad()})
	}
	
	method cumplir(unaPersona) {
		suenios.forEach({suenio => suenio.cumplir(unaPersona)})
	}

}
