//FUNCIONES
function valida_form ( )
{
	var input = "";
	valid = true;
	if (document.crea_usu.cedula.value == ""){
		alert("Por favor llene el campo CEDULA!");
		valid = false;
	}
	else {
		input = document.getElementById('cedula');
	  	if(!input.checkValidity()) {
	    	alert('El campo CEDULA ingresado NO es válido.');
	    	document.getElementById('cedula').value = "";
	    	valid = false; 
	  		}
	}

	if (document.crea_usu.apellidos.value == ""){
		alert("Por favor llene el campo APELLIDOS!");
		valid = false;
	}
	else {
		input = document.getElementById('apellidos');
	  	if(!input.checkValidity()) {
	    	alert('El campo APELLIDOS ingresado NO es válido.');
	    	document.getElementById('apellidos').value = "";
	    	valid = false; 
	  		}
	  	}


	if (document.crea_usu.nombres.value == ""){
		alert("Por favor llene el campo NOMBRES!");
		valid = false;
	}else {
		input = document.getElementById('nombres');
	  	if(!input.checkValidity()) {
	    	alert('El campo NOMBRES ingresado NO es válido.');
	    	document.getElementById('nombres').value = "";
	    	valid = false; 
	  		}
	  	}

	if (document.crea_usu.cargo.value == ""){
		alert("Por favor llene el campo CARGO!");
		valid = false;
	}else {
		input = document.getElementById('CARGO');
	  	if(!input.checkValidity()) {
	    	alert('El campo CARGO ingresado NO es válido.');
	    	document.getElementById('cedula').value = "";
	    	valid = false; 
	  		}
	  	}

	if (document.crea_usu.email.value == ""){
		alert("Por favor llene el campo EMAIL!");
		valid = false;
	}
	else{
		input = document.getElementById('email');
	  	if(!input.checkValidity()) {
	    	alert('El campo email ingresado NO es válido.');
	    	document.getElementById('email').value = "";
	    	valid = false; 
	  		}
	}

	if (document.crea_usu.direccion.value == ""){
		alert("Por favor llene el campo DIRECCION!");
		valid = false;
	}
	if (document.crea_usu.telefono.value == ""){
		alert("Por favor llene el campo TELEFONO!");
		valid = false;
	}else {
		input = document.getElementById('telefono');
	  	if(!input.checkValidity()) {
	    	alert('El campo TELEFONO ingresado NO es válido.');
	    	document.getElementById('telefono').value = "";
	    	valid = false; 
	  		}
	  	}
	 
return valid;	    
}