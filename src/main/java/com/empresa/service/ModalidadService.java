package com.empresa.service;

import java.util.List;
import java.util.Optional;

import com.empresa.entity.Modalidad;

public interface ModalidadService {

	//METODO PARA INSERTAR 
	public abstract Modalidad insertaModalidad(Modalidad obj);
	
	
	public abstract List<Modalidad> listaPorNombre(String nombre);
	
	
	//METODO SIRVA PARA ACUTALIZAR
	public abstract Modalidad actualizaModalidad(Modalidad obj);
	
	//METODO PARA LISTAR ALL EN LA TABLA
	public abstract List<Modalidad> listaPorNombreLike(String nombre);
	
	
	//METODO PARA BUSCAR MODALIDAD SEGUN EL ID
	/*
	 * Proporciona una forma clara y explícita de transmitir el mensaje de que puede
	 * que no haya un valor, sin utilizar null . Al obtener un tipo de devolución
	 * Opcional , es probable que verifiquemos si falta el valor, lo que genera
	 * menos NullPointerException en las aplicaciones. Sin embargo, el tipo Opcional
	 * no es adecuado en todos los lugares.
	 */
	public abstract Optional<Modalidad> buscaModalidad(int idModalidad);
}
