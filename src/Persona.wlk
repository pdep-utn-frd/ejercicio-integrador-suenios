
class Persona {
  
  // lista de suenios que quiere cumplir
  var suenios = []
  var felicidad
  var caracter
  
  // datos de la persona
  var edad
  var carreraQueQuiere
  var lugaresQueQuiereViajar
  var plataQueQuiereGanar
  var hijos
  var carreraActual
  
  constructor(_felicidad, _suenios, _edad, _carreraQueQuiere, _lugaresQueQuiereViajar, _plataQueQuiereGanar, _hijos, _carrera, _caracter) {
  	felicidad = _felicidad
  	suenios = _suenios
  	edad = _edad
  	carreraQueQuiere = _carreraQueQuiere
  	lugaresQueQuiereViajar = _lugaresQueQuiereViajar
  	plataQueQuiereGanar = _plataQueQuiereGanar
  	hijos = _hijos
  	caracter = _caracter
  	carreraActual = _carrera
  }
  
  // getters y setters
  
  method carreraActual() {
  	return carreraActual
  }
  
  method carreraActual(_carrera) {
  	carreraActual = _carrera
  }
  
  method felicidad() {
  	return felicidad
  }
  
  method aumentarFelicidad(_felicidad) {
  	felicidad += _felicidad
  }
  
  method caracter() {
  	return caracter
  }
  
  method caracter(_caracter) {
  	caracter = _caracter
  }
  
  method suenios() {
  	return suenios
  }
  
  method edad() {
  	return edad
  }
  
  method carreraQueQuiere() {
  	return carreraQueQuiere
  }
  
  method lugaresQueQuiereViajar() {
  	return lugaresQueQuiereViajar
  }
  
  method plataQueQuiereGanar() {
  	return plataQueQuiereGanar
  }
  
  method hijos() {
  	return hijos
  }
  
  // punto 1
  method cumplirUnSuenio(_suenio) {
  	_suenio.cumplir(self)
  }
  
  // punto 3
  method cumplirSueniosQueQuiere() {
  	caracter.cumplirSuenios(self)	
  }
  
  method puntosPendientes() {
  	return suenios.filter({suenio => suenio.estaPendiente()})
  	              .sum({suenioPendiente => suenioPendiente.felicidad()})
  }

  // punto 4
  method esFeliz() {
    return (felicidad > self.puntosPendientes())
  }
  
  // punto 5: Una persona es ambiciosa si tiene mas de 3 suenios con mas de 100 puntos
  method esAmbiciosa() {
  	return suenios.count({suenio => suenio.felicidad() > 100}) > 3
  }
  
  
  // auxiliares
  method tieneHijoNoAdoptado() {
  	return hijos.any({hijo => !hijo.adoptado() }) 
  }
  
  method suenioMasImportante() {
  	return suenios.max({suenio => suenio.felicidad()})
  }
  
  method adoptarHijos(nuevosHijos) {
  	hijos.addAll(nuevosHijos)
  }
  
}