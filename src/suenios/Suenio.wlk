
class Suenio {
	var felicidad
	var pendiente
	
	constructor(_felicidad, _pendiente) {
		felicidad = _felicidad
		pendiente = _pendiente
	}
	
	method felicidad() {
		return felicidad
	}
	
	method pendiente() {
		return pendiente
	}
	
	method pendiente(_booleano) {
		pendiente = _booleano
	}
	
	method cumplir(persona) {
		pendiente = false
		persona.aumentarFelicidad(felicidad)
	} 
}


