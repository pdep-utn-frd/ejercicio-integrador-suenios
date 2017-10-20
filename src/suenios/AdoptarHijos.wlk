import suenios.Suenio.*
import Excepciones.*

class AdoptarHijos inherits Suenio {
	var hijosAdoptados = []
	
	constructor(_felicidad, _pendiente, _hijosAdoptados) = super(_felicidad, _pendiente) {
		hijosAdoptados = _hijosAdoptados
	}
	
	method hijosAdoptados() {
		return hijosAdoptados
	}
	
	override
	method cumplir(persona) {
		if (!persona.tieneHijoNoAdoptado())
		  throw new NoSePuedeCumplirException("No puede adoptar hijos debido a que ya tiene uno no adoptado")
		
		persona.adoptar(hijosAdoptados)
		super(persona)	
			
	}
}