import profesionales.*

class PersonaSolicitante{
	var property provincia
	method puedeSerAtentidaPor(profesional){
		return profesional.provinciaDondePuedeTrabajar().any{p=>p == provincia}
	}
}

class InstitucionSolicitante{
	var universidadesReconocidas = []
	method puedeSerAtendidaPor(profesional){
		return universidadesReconocidas.any{u => u == profesional.universidad()}
	}
}