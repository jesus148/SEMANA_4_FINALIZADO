package com.empresa.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.empresa.entity.Modalidad;

public interface ModalidadRepository extends JpaRepository<Modalidad, Integer>{

	
	public List<Modalidad> findByNombreIgnoreCase(String nombre);
	
	
	//METODO PARA LISTAR , devuelve una lista segun lo que encuentre 
	//se busca x atributo nombre q esta en la clase guia(String nombre)en el parametro poner igual
	//findByNombreLike : donde Nombre es el atributo poner con mayuscula
	public List<Modalidad> findByNombreLike(String nombre);
	
}