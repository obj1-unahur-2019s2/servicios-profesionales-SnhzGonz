import profesionales.*
import universidades.*

class EmpresaDeServicios {
	var listaDeProfesionales = []
	var property honorariosDeReferencia
	
	method contratarProfesional(prof){
		listaDeProfesionales.add(prof)
	}
	method despedirProfesional(prof){
		listaDeProfesionales.remove(prof)
	}
	method cuantosEstudiaronEn(univ){
		return listaDeProfesionales.count({p => p.universidad() == univ})
	}
	method profesionalesCaros(){
		return listaDeProfesionales.filter({p => p.honorariosPorHora() > honorariosDeReferencia})
	}
	method universidadesFormadoras(){
		return listaDeProfesionales.map({p => p.universidad()}).asSet()
	}
	method profesionalMasBarato(){
		return listaDeProfesionales.min({p => p.honorariosPorHora()})
	}
	method esGenteAcotada(){
		return listaDeProfesionales.all({p => p.provinciasDondePuedeTrabajar().size() <= 3})
	}
	method puedeSatisfacerAUnSolicitante(solicitante){
		return listaDeProfesionales.any{p => solicitante.puedeSerAtentidaPor(p)}
	}
}
