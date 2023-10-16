<!DOCTYPE html>
<html lang="esS" >
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="js/dataTables.bootstrap.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/bootstrapValidator.js"></script>
<script type="text/javascript" src="js/global.js"></script>

<link rel="stylesheet" href="css/bootstrap.css"/>
<link rel="stylesheet" href="css/dataTables.bootstrap.min.css"/>
<link rel="stylesheet" href="css/bootstrapValidator.css"/>
<title>Ejemplos de CIBERTEC - Jorge Jacinto </title>
</head>
<body> 

 <div class="container">
 <h3>Crud de Modalidad</h3>
 
 
 
 
 
		 <div class="col-md-23" >  

				   <div class="row" style="height: 70px">
						<div class="col-md-2" >
								<input class="form-control" id="id_txt_filtro"  name="filtro" placeholder="Ingrese el nombre" type="text" maxlength="30"/>
						</div>
<!-- 						LISTA MODALIDAD -->
						<div class="col-md-2" >
							<button type="button" class="btn btn-primary" id="id_btn_filtrar" style="width: 150px">FILTRA</button>
						</div>
						
<!-- 					     REGISTRA MODALIDA  -->
						<div class="col-md-2">
<!-- 						 data-target="#id_div_modal_registra" : aparece el modal -->
							<button type="button" data-toggle='modal'  data-target="#id_div_modal_registra"  class='btn btn-success' style="width: 150px">REGISTRA</button>
						</div>
					</div>
					<div class="row" > 
						<div class="col-md-12">
								<div class="content" >
						
									<table id="id_table" class="table table-striped table-bordered" >
										<thead>
											<tr>
<!-- 		aca mostrara los datos que quieres mostrar de la tabla de bd -->
												<th style="width: 5%" >ID</th>
												<th style="width: 25%">Nombre</th>
												<th style="width: 8%">#Hombres</th>
												<th style="width: 8%">#Mujeres</th>
												<th style="width: 8%">Edad Max</th>
												<th style="width: 8%">Edad Min</th>
												<th style="width: 8%">Sede</th>
												<th style="width: 10%">Deporte</th>
												
												
												<th style="width: 10%">Actualiza</th><!-- 	 para editar -->
												<th style="width: 10%">Elimina</th><!-- cambiar el estado-->
											</tr>
										</thead>
											<tbody>
											</tbody>
										</table>
								</div>	
						</div>
					</div>
		  </div>
		  
		  
		  
		  
		  
		  
<!-- 		  MODAL PARA REGISTRAR  -->
  
  	 <div class="modal fade" id="id_div_modal_registra" >
			<div class="modal-dialog" style="width: 60%">
		
				<!-- Modal content-->
				<div class="modal-content">
				<div class="modal-header" style="padding: 35px 50px">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4><span class="glyphicon glyphicon-ok-sign"></span> Registro de modalidad</h4>
				</div>
				<div class="modal-body" style="padding: 20px 10px;">
<!-- 			id="id_form_registra"  : sirve para validar -->
						<form id="id_form_registra" accept-charset="UTF-8" action="registraActualizaCrudModalidad" class="form-horizontal"     method="post">
		                    <div class="panel-group" id="steps">
		                        <!-- Step 1 -->
		                        <div class="panel panel-default">
		                            <div class="panel-heading">
		                                <h4 class="panel-title"><a data-toggle="collapse" data-parent="#steps" href="#stepOne">Datos de Modalidad</a></h4>
		                            </div>
		                            <div id="stepOne" class="panel-collapse collapse in">
		                                <div class="panel-body">
		                                     <div class="form-group">
<!-- 		                                     recordar que lo name debes ser igual al la tabla  , atributos -->
		                                        <label class="col-lg-3 control-label" for="id_reg_nombre">Nombre</label>
		                                        <div class="col-lg-8">
													<input class="form-control" id="id_reg_nombre" name="nombre" placeholder="Ingrese el Nombre" type="text" maxlength="20"/>
		                                        </div>
		                                    </div>
		                                    <div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_reg_num_hombres"># Hombres</label>
		                                        <div class="col-lg-3">
													<input class="form-control" id="id_reg_num_hombres" name="numHombres" placeholder="Ingrese el número de hombres" type="text" maxlength="2"/>
		                                        </div>
		                                    </div>
		                                    <div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_reg_num_mujeres"># Mujeres</label>
		                                        <div class="col-lg-3">
													<input class="form-control" id="id_reg_num_mujeres" name="numMujeres" placeholder="Ingrese el número de mujeres" type="text" maxlength="2"/>
		                                        </div>
		                                    </div>		   
		                                    <div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_reg_maxima">Edad Máxima</label>
		                                        <div class="col-lg-3">
													<input class="form-control" id="id_reg_maxima" name="edadMaxima" placeholder="Ingrese la edad máxima" type="text" maxlength="2"/>
		                                        </div>
		                                    </div>   
		                                    <div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_reg_minima">Edad Mínima</label>
		                                        <div class="col-lg-3">
													<input class="form-control" id="id_reg_minima" name="edadMinima" placeholder="Ingrese la edad mínima" type="text" maxlength="2"/>
		                                        </div>
		                                    </div>   
		                                    <div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_reg_sede">Sede</label>
		                                        <div class="col-lg-8">
													<input class="form-control" id="id_reg_sede" name="sede" placeholder="Ingrese la sede" type="text" maxlength="20"/>
		                                        </div>
		                                    </div>    
		                                    <div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_reg_deporte">Deporte</label>
		                                        <div class="col-lg-3">
													 <select id="id_reg_deporte" name="deporte" class='form-control'>
							                            	<option value=" ">[Seleccione]</option>    
							                         </select>
		                                        </div>
		                                    </div>
		                                    <div class="form-group">
		                                        <div class="col-lg-9 col-lg-offset-3">
		                                        	<button type="button" class="btn btn-primary" id="id_btn_registra">REGISTRA</button>
		                                        </div>
		                                    </div>
		                                </div>
		                            </div>
		                        </div>
		                        
		                    </div>
		                </form>   
				
				</div>
			</div>
		</div>
			
		</div>
  
  
  
  
  
  
<!--   MODAL PARA ELIMINAR  -->
		 <div class="modal fade" id="id_div_modal_actualiza" >
			<div class="modal-dialog" style="width: 60%">
		
				<div class="modal-content">
				<div class="modal-header" style="padding: 35px 50px">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4><span class="glyphicon glyphicon-ok-sign"></span> Actualiza Modalidad</h4>
				</div>
				<div class="modal-body" style="padding: 20px 10px;">
						<form id="id_form_actualiza" accept-charset="UTF-8"  action="registraActualizaCrudModalidad" class="form-horizontal"     method="post">
		                    <div class="panel-group" id="steps">
		                        <!-- Step 1 -->
		                        <div class="panel panel-default">
		                            <div class="panel-heading">
		                                <h4 class="panel-title"><a data-toggle="collapse" data-parent="#steps" href="#stepOne">Datos de Modalidad</a></h4>
		                            </div>
		                            <div id="stepOne" class="panel-collapse collapse in">
		                                <div class="panel-body">
		                                    <div class="form-group">
<!-- 		                                    el ID NO SE ACTUALIZA  -->
		                                        <label class="col-lg-3 control-label" for="id_ID">ID</label>
		                                        <div class="col-lg-8">
		                                           <input class="form-control" id="id_ID" readonly="readonly" name="idModalidad" type="text" maxlength="8"/>
		                                        </div>
		                                     </div>
		                                     <div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_nombre">Nombre</label>
		                                        <div class="col-lg-3">
													<input class="form-control" id="id_act_nombre" name="nombre" placeholder="Ingrese el Nombre" type="text" maxlength="20"/>
		                                        </div>
		                                    </div>
		                                    <div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_num_hombres"># Hombres</label>
		                                        <div class="col-lg-3">
													<input class="form-control" id="id_act_num_hombres" name="numHombres" placeholder="Ingrese el número de hombres" type="text" maxlength="2"/>
		                                        </div>
		                                    </div>
		                                    <div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_num_mujeres"># Mujeres</label>
		                                        <div class="col-lg-3">
													<input class="form-control" id="id_act_num_mujeres" name="numMujeres" placeholder="Ingrese el número de mujeres" type="text" maxlength="2"/>
		                                        </div>
		                                    </div>		   
		                                    <div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_maxima">Edad Máxima</label>
		                                        <div class="col-lg-3">
													<input class="form-control" id="id_act_maxima" name="edadMaxima" placeholder="Ingrese la edad máxima" type="text" maxlength="2"/>
		                                        </div>
		                                    </div>   
		                                    <div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_minima">Edad Mínima</label>
		                                        <div class="col-lg-3">
													<input class="form-control" id="id_act_minima" name="edadMinima" placeholder="Ingrese la edad mínima" type="text" maxlength="2"/>
		                                        </div>
		                                    </div>    
		                                    <div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_act_sede">Sede</label>
		                                        <div class="col-lg-8">
													<input class="form-control" id="id_act_sede" name="sede" placeholder="Ingrese la sede" type="text" maxlength="20"/>
		                                        </div>
		                                    </div>  
		                                    <div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_act_deporte">Deporte</label>
		                                        <div class="col-lg-3">
													<select id="id_act_deporte" name="deporte" class='form-control'>
							                            	<option value=" ">[Seleccione]</option>    
							                         </select>
		                                        </div>
		                                    </div>
		                                    <div class="form-group">
		                                        <div class="col-lg-9 col-lg-offset-3">
		                                        	<button type="button" class="btn btn-primary" id="id_btn_actualiza">ACTUALIZA</button>
		                                        </div>
		                                    </div>
		                                </div>
		                            </div>
		                        </div>
		                        </div>

		                </form>   
				
				</div>
			</div>
		</div>
			
		</div>

</div>












<script type="text/javascript">

// CARGA COMBO CUANDO INCIA TANTO EN MODAL RGISRA Y EN EL ACTUALIZA, RECORDAR que cuando llama a un controller busca en todos controller del paquete 
//controller , listaDeporte se encuentra en el registramodalidadcontrolller
$.getJSON("listaDeporte", {}, function(data){
	$.each(data, function(i,item){
		//id de los combos modales               atributos igual a la clase guia
		$("#id_reg_deporte").append("<option value="+item.idDeporte +">"+ item.nombre +"</option>");
		$("#id_act_deporte").append("<option value="+item.idDeporte +">"+ item.nombre +"</option>");
	});
});






// ESTO SIRVA PARA LISTAR TODO(caso sea vacio) y cuando escribamos listara segun eso
//id del boton filtro
$("#id_btn_filtrar").click(function(){
	var fil=$("#id_txt_filtro").val(); //id del input 
	//Id del controller              "filtro":fil : donde el   "filtro" parametro igual en el controller
	$.getJSON("consultaCrudModalidad",{"filtro":fil}, function (lista){
		agregarGrilla(lista);
	});
});





//METODO AGREGA EN LA TABLA
function agregarGrilla(lista){
	 $('#id_table').DataTable().clear();
	 $('#id_table').DataTable().destroy();
	 $('#id_table').DataTable({
			data: lista,
			searching: false,
			ordering: true,
			processing: true,
			pageLength: 5,
			lengthChange: false,
			columns:[
				//MOSTRANDO LOS DATOS QUE QUEREMOS
				//atributos igual a la clase guia
				{data: "idModalidad"},
				{data: "nombre"},
				{data: "numHombres"},
				{data: "numMujeres"},
				{data: "edadMaxima"},
				{data: "edadMinima"},
				{data: "sede"},
				//deporte.nombre : deporte es el nombre de la clase guia foranea , nombre lo q quiero de esa clase
				{data: "deporte.nombre"},
				//MODAL EDITAR O ACTUALIZAR , RECIBE PARAMETROS , el id .etc
				{data: function(row, type, val, meta){
					var salida='<button type="button" style="width: 90px" class="btn btn-info btn-sm" onclick="editar(\''+row.idModalidad + '\',\'' + row.nombre +'\',\'' + row.numHombres  +'\',\'' + row.numMujeres + '\',\'' + row.edadMaxima + '\',\'' +  row.edadMinima + '\',\'' +  row.sede + '\',\'' + row.deporte.idDeporte + '\')">Editar</button>';
					return salida;
				},className:'text-center'},	
				//SOLO CAMBIA EL ESTADO
				{data: function(row, type, val, meta){                                                                         //evento se envia el id                                                                                   //esto solo es para mostrar activo o inativo
				    var salida='<button type="button" style="width: 90px" class="btn btn-warning btn-sm" onclick="accionEliminar(\'' + row.idModalidad + '\')">'+ (row.estado == 1? 'Activo':'Inactvo') +  '</button>';
					return salida;
				},className:'text-center'},													
			]                                     
	    });
}


//METODO ELIMINAR SOLO CAMBIA EL ESTADO

function accionEliminar(id){	
    $.ajax({
          type: "POST",
          url: "eliminaCrudModalidad",  //URL DEL CONTROLADOR
          data: {"id":id}, //"id" igual en el parametro del controlador metodo
          success: function(data){
        	  //lista debe ser igual al "lista" del controller
        	  agregarGrilla(data.lista);
          },
          error: function(){
        	  mostrarMensaje(MSG_ERROR);
          }
     });
}





//FUNCION PARA MOSTRAR EL MODAL ACTUALIZA
//recibe parametro y los pone en los inputs
function editar(id,nombre,numHombres,numMujeres,edadMaxima, edadMinima,sede, idDeporte){	
	//poniendo en los inputs
	$('#id_ID').val(id); 
	$('#id_act_nombre').val(nombre);
	$('#id_act_num_hombres').val(numHombres);
	$('#id_act_num_mujeres').val(numMujeres);
	$('#id_act_minima').val(edadMinima);
	$('#id_act_maxima').val(edadMinima);
	$('#id_act_deporte').val(idDeporte);
	$('#id_act_sede').val(sede);
	$('#id_div_modal_actualiza').modal("show"); //MUESTRA EL MODAL
}


//METODO PARA LIMPIAR INPUTS DEL MO0DAL REGISTRA
function limpiarFormulario(){	
	$('#id_reg_num_hombres').val('');
	$('#id_reg_num_mujeres').val('');
	$('#id_reg_maximo').val('');
	$('#id_reg_minimo').val('');
	$('#id_reg_sede').val('');
	$('#id_reg_deporte').val(' ');
}




//PARA REGISTRAR MODALIDAD
//id del modal registrar
$("#id_btn_registra").click(function(){
	//llama al validator del modal registra + abajo , id_form_registra el id del form
	var validator = $('#id_form_registra').data('bootstrapValidator');
    validator.validate();
	
    if (validator.isValid()) {
        $.ajax({
          type: "POST",
          url: "registraCrudModalidad", 
          data: $('#id_form_registra').serialize(), //enviamos todo de ese form
          success: function(data){
        	  agregarGrilla(data.lista);//agrega a la grilla , LISTA NUEVAMENTE, lista debe ser igual al map lista
        	  $('#id_div_modal_registra').modal("hide"); //esconde el modal
        	  mostrarMensaje(data.mensaje);//muestra mensaje, mensaje debe ser igual en el controller en el map
        	  limpiarFormulario();//limpia formulario
        	  validator.resetForm();//resetea validator
          },
          error: function(){
        	  mostrarMensaje(MSG_ERROR);
          }
        });
        
    }
});






//METODO Q ACTUALIZARA
//este es el id del boton 
$("#id_btn_actualiza").click(function(){
	//el id del form actualiza , pa validar 
	var validator = $('#id_form_actualiza').data('bootstrapValidator');
    validator.validate();
    
    
    if (validator.isValid()) {
        $.ajax({
          type: "POST",
          url: "actualizaCrudModalidad",  //URL DEL DEL CONTROLLER
          data: $('#id_form_actualiza').serialize(), //ENVIO TODO EL FORM
          success: function(data){
        	  agregarGrilla(data.lista); //OBTIEN LA LISTA DEL MAP
        	  $('#id_div_modal_actualiza').modal("hide");
        	  mostrarMensaje(data.mensaje);//OBITENE MENSAJE DEL MAP
          },
          error: function(){
        	  mostrarMensaje(MSG_ERROR);
          }
        });
    }
});



</script>



<!-- VALIDACIONES MODAL REGISTRA -->
<script type="text/javascript">

//el id del form modal registra

	$('#id_form_registra').bootstrapValidator({
        message: 'This value is not valid',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
        	//name de los inputs, igual a la clase guia
        	"nombre": {
        		selector : '#id_reg_nombre', //el id de los inputs
                validators: {
                    notEmpty: {
                        message: 'El nombre es un campo obligatorio'
                    },
                    stringLength :{
                    	message:'El nombre es de 5 a 100 caracteres',
                    	min : 5,
                    	max : 100
                    }
                }
            },
            "numHombres": {
        		selector : '#id_reg_num_hombres',
                validators: {
                    notEmpty: {
                        message: 'El número de hombres es un campo obligatorio'
                    },
                    lessThan: {
		                value: 15,
		                inclusive: true,
		                message: 'La edad es menor a 15'
		            },
		            greaterThan: {
		                value: 0,
		                inclusive: true,
		                message: 'La edad es mayor a 0'
		            }
                }
            },
            "numMujeres": {
        		selector : '#id_reg_num_mujeres',
                validators: {
                	notEmpty: {
                        message: 'El número de mujeres es un campo obligatorio'
                    },
                    lessThan: {
		                value: 15,
		                inclusive: true,
		                message: 'La edad es menor a 15'
		            },
		            greaterThan: {
		                value: 0,
		                inclusive: true,
		                message: 'La edad es mayor a 0'
		            }
                }
            },
            "edadMaxima": {
        		selector : '#id_reg_maxima',
                validators: {
                	notEmpty: {
                        message: 'La edad máxima es un campo obligatorio'
                    },
                    lessThan: {
		                value: 35,
		                inclusive: true,
		                message: 'La edad es menor a 35'
		            },
		            greaterThan: {
		                value: 18,
		                inclusive: true,
		                message: 'La edad es mayor a 18'
		            }
                }
            },
            "edadMinima": {
        		selector : '#id_reg_minima',
                validators: {
                	notEmpty: {
                        message: 'La edad mínima es un campo obligatorio'
                    },
                    lessThan: {
		                value: 35,
		                inclusive: true,
		                message: 'La edad es menor a 35'
		            },
		            greaterThan: {
		                value: 18,
		                inclusive: true,
		                message: 'La edad es mayor a 18'
		            }
                }
            },
            "sede": {
        		selector : '#id_reg_sede',
                validators: {
                	notEmpty: {
                        message: 'La sede es un campo obligatorio'
                    },
                    stringLength :{
                    	message:'La sede es de 2 a 20 caracteres',
                    	min : 2,
                    	max : 20
                    }
                }
            },
            //clase guia, y lo que quiero, valida el value , verificando q se envie el value
            "deporte.idDeporte": {
        		selector : '#id_reg_deporte',
                validators: {
                	notEmpty: {
                        message: 'El deporte un campo obligatorio'
                    },
                }
            },
        	
        }   
    });
</script>



<!-- VALIDACIONES PARA EL MODAL ACTUALIZA -->
<script type="text/javascript">
	$('#id_form_actualiza').bootstrapValidator({
        message: 'This value is not valid',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
        	"nombre": {
        		selector : '#id_act_nombre',
                validators: {
                    notEmpty: {
                        message: 'El nombre es un campo obligatorio'
                    },
                    stringLength :{
                    	message:'El nombre es de 5 a 100 caracteres',
                    	min : 5,
                    	max : 100
                    }
                }
            },
            "numHombres": {
        		selector : '#id_act_num_hombres',
                validators: {
                    notEmpty: {
                        message: 'El número de hombres es un campo obligatorio'
                    },
                    lessThan: {
		                value: 15,
		                inclusive: true,
		                message: 'La edad es menor a 15'
		            },
		            greaterThan: {
		                value: 0,
		                inclusive: true,
		                message: 'La edad es mayor a 0'
		            }
                }
            },
            "numMujeres": {
        		selector : '#id_act_num_mujeres',
                validators: {
                	notEmpty: {
                        message: 'El número de mujeres es un campo obligatorio'
                    },
                    lessThan: {
		                value: 15,
		                inclusive: true,
		                message: 'La edad es menor a 15'
		            },
		            greaterThan: {
		                value: 0,
		                inclusive: true,
		                message: 'La edad es mayor a 0'
		            }
                }
            },
            "edadMaxima": {
        		selector : '#id_act_maxima',
                validators: {
                	notEmpty: {
                        message: 'La edad máxima es un campo obligatorio'
                    },
                    lessThan: {
		                value: 35,
		                inclusive: true,
		                message: 'La edad es menor a 35'
		            },
		            greaterThan: {
		                value: 18,
		                inclusive: true,
		                message: 'La edad es mayor a 18'
		            }
                }
            },
            "edadMinima": {
        		selector : '#id_act_minima',
                validators: {
                	notEmpty: {
                        message: 'La edad mínima es un campo obligatorio'
                    },
                    lessThan: {
		                value: 35,
		                inclusive: true,
		                message: 'La edad es menor a 35'
		            },
		            greaterThan: {
		                value: 18,
		                inclusive: true,
		                message: 'La edad es mayor a 18'
		            }
                }
            },
            "sede": {
        		selector : '#id_act_sede',
                validators: {
                	notEmpty: {
                        message: 'La sede es un campo obligatorio'
                    },
                    stringLength :{
                    	message: 'La sede es de 2 a 20 caracteres',
                    	min : 2,
                    	max : 20
                    }
                }
            },
            "deporte.idDeporte": {
        		selector : '#id_act_deporte',
                validators: {
                	notEmpty: {
                        message: 'El deporte un campo obligatorio'
                    },
                }
            },
          
        }   
    });
</script>
    
</body>
</html> 