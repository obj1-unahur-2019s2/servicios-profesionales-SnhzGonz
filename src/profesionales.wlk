import universidades.*

// esta clase está completa, no necesita nada más
class ProfesionalAsociado {
	var universidad
	
	method universidad() { return universidad }
	method universidad(univ) { universidad = univ }
	
	method provinciasDondePuedeTrabajar() { return #{"Entre Ríos", "Corrientes", "Santa Fe"} }
	
	method honorariosPorHora() { return 3000 }
}


// a esta clase le faltan métodos
class ProfesionalVinculado {
	var universidad
	
	method universidad() { return universidad }
	method universidad(univ) { universidad = univ }
	method honorariosPorHora() {return universidad.honorariosRecomendados()}
	method provinciasDondePuedeTrabajar() {return universidad.provincia()}
}


// a esta clase le faltan atributos y métodos
class ProfesionalLibre {
	var universidad
	var property provincia
	var property honorarios
	
	method universidad() { return universidad }
	method universidad(univ) { universidad = univ }
	method honorariosPorHora() {return honorarios}
	method provinciasDondePuedeTrabajar() {return provincia}
}
