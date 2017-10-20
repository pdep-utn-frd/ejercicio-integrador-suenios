import suenios.Suenio.*

class TenerUnHijo inherits Suenio {
	var hijo
	
	constructor(_felicidad, _pendiente, _hijo) = super(_felicidad, _pendiente) {
		hijo = _hijo
	}
	
	method hijo() {
		return hijo
	}
	
	override
	method cumplir(persona) {
		persona.hijos().add(hijo)	
		super(persona)	
	}

}