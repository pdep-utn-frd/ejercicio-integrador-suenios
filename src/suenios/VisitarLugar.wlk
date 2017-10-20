import suenios.Suenio.*
import Excepciones.*

class VisitarLugar inherits Suenio {

	var lugar
	
	constructor(_felicidad, _pendiente, _lugar) = super(_felicidad, _pendiente) {
		lugar = _lugar
	}
	
	override
	method cumplir(persona) {
		if (!persona.lugaresQueQuiereViajar().contains(lugar))
		  throw new NoSePuedeCumplirException("La persona no quiere viajar a " + lugar)
		
	    persona.lugaresQueQuiereViajar().remove(lugar)	
        super(persona)
	}
	
}