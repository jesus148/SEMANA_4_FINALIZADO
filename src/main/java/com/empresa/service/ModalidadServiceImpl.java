package com.empresa.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.empresa.entity.Modalidad;
import com.empresa.repository.ModalidadRepository;

@Service
public class ModalidadServiceImpl implements ModalidadService{

	@Autowired
	private ModalidadRepository repository;
	
	//METODO INSERTAR
	@Override
	public Modalidad insertaModalidad(Modalidad obj) {
		return repository.save(obj);
	}
	

	@Override
	public List<Modalidad> listaPorNombre(String nombre) {
		return repository.findByNombreIgnoreCase(nombre);
	}

	//METODO ACTUALIZAR PARECIDO A INSERTAR
	@Override
	public Modalidad actualizaModalidad(Modalidad obj) {
		return repository.save(obj);
	}

	//METODO PARA LISTAR ALL EN LA TABLA
	@Override
	public List<Modalidad> listaPorNombreLike(String nombre) {
		return repository.findByNombreLike(nombre);
	}

	//METODO PARA BUSCAR MODALIDAD SEGUN EL ID
	@Override
	public Optional<Modalidad> buscaModalidad(int idModalidad) {
		//econtrar por id
		return repository.findById(idModalidad);
	}



}
