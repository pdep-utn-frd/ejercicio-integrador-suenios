import suenios.Suenio.*
import Excepciones.*

class ConseguirNuevoTrabajo inherits Suenio {
	var salario
	
	constructor(_felicidad, _pendiente, _salario) = super(_felicidad, _pendiente) {
		salario = _salario
	}
		
	override
	method cumplir(persona) {
		if (salario < persona.plataQueQuiereGanar()) 
			throw new NoSePuedeCumplirException("El salario es mas bajo de lo que la persona desea")
		
		super(persona)	
	}
}