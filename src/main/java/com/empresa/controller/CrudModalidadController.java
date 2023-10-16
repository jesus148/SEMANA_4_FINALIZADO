package com.empresa.controller;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.empresa.entity.Modalidad;
import com.empresa.service.ModalidadService;

@Controller
public class CrudModalidadController {

	
	//ModalidadService se agrega en modalidadService
	@Autowired
	private ModalidadService modalidadService;
	
	//1
	//para ver la vista redirige al jsp
	@RequestMapping("/verCrudModalidad")
	public String verInicio() {
		return "crudModalidad";
	}
	
	//2
	//recordar q para jalar el combo de deporte esta en el registra modalidad
	
	
	
	
	
	//3
	@PostMapping("/registraCrudModalidad")
	@ResponseBody
	public Map<?, ?> registra(Modalidad obj) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		//DATOS QUE AGREGAMOS AL OBJ RECIBIDO DEL FORM
		obj.setEstado(1);
		obj.setFechaRegistro(new Date());
		obj.setFechaActualizacion(new Date());  
		//DEL SERIVCE INSERTA CON EL METODO
		Modalidad objSalida = modalidadService.insertaModalidad(obj);
		
		
		//DATOS DE RETORNO Y LISTA NUEVAMENTE
		if (objSalida == null) {
			//"mensaje" : mensaje debe ser igual en el jsp
			map.put("mensaje", "Error en el registro");
		} else {
			
			List<Modalidad> lista = modalidadService.listaPorNombreLike("%");
			//es para listar 
			map.put("lista", lista);
			//esto es el mensaje
			map.put("mensaje", "Registro exitoso");
		}
		return map;
	}
	
	
	//4
	@PostMapping("/actualizaCrudModalidad")
	@ResponseBody
	public Map<?, ?> actualiza(Modalidad obj) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		  
		//BUSCA EL OBJETO MODALIDAD                                         atraves de su id de ese obj recibido del jsp
		Optional<Modalidad> optModalidad= modalidadService.buscaModalidad(obj.getIdModalidad());
		
		//MODIFICAMOS CIERTOS CAMPOS
		obj.setFechaRegistro(optModalidad.get().getFechaRegistro());//mismo fcha registro
		obj.setEstado(optModalidad.get().getEstado());
		obj.setFechaActualizacion(new Date());
		
		//ACTUALIZAMOS MODALIDAD
		Modalidad objSalida = modalidadService.actualizaModalidad(obj);
		
		
		//DATOS DE REGRESO
		if (objSalida == null) {
			map.put("mensaje", "Error en actualizar");
		} else {
			//LISTA OTRA VEZ
			List<Modalidad> lista = modalidadService.listaPorNombreLike("%");
			map.put("lista", lista);
			map.put("mensaje", "Actualización exitosa");
		}
		return map;
	}
	
	
	//5
	@ResponseBody
	@PostMapping("/eliminaCrudModalidad")
	public Map<?, ?> elimina(int id) { //recibe el id la fila del objeto
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		//busca el objeto modalidad , optional pq puede o no encontrarlo
		Modalidad objModalidad= modalidadService.buscaModalidad(id).get();
		
		//luego de econtrarlo modificar el estado y fec actualizacion 
		objModalidad.setFechaActualizacion(new Date());  
		objModalidad.setEstado( objModalidad.getEstado() == 1 ? 0 : 1);
		
		//luego ya modificado lo actualizamos 
		Modalidad objSalida = modalidadService.actualizaModalidad(objModalidad);
		
		//DATOS DE REGRESO
		if (objSalida == null) {
			map.put("mensaje", "Error en actualizar");
		} else {
			//lista de nuevo 
			List<Modalidad> lista = modalidadService.listaPorNombreLike("%");
			//"lista" variable se almacena todo List<Modalidad> lista
			map.put("lista", lista);
		}
		return map;
	}
	
	
	//6
	@GetMapping("/consultaCrudModalidad")
	@ResponseBody
	public List<Modalidad> consulta(String filtro) {
		return modalidadService.listaPorNombreLike("%"+filtro+"%");
	}
	
	
	
}