import suenios.Suenio.*
import Persona.*
import Excepciones.*

class Recibirse inherits Suenio {	
	
	var carrera
	
	constructor(_felicidad, _pendiente, _carrera) = super(_felicidad, _pendiente) {
		carrera = _carrera
	}

	override
	method cumplir(persona) {
		if ((persona.carreraQueQuiere() != carrera) || persona.carreraActual() == carrera)
		  throw new NoSePuedeCumplirException("No se puede recibir de " + carrera)
		  
		super(persona)
		persona.carreraActual(carrera)

		
	}
}
