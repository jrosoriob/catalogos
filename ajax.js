function objetoAjax(){
	var xmlhttp=false;
	try {
		xmlhttp = new ActiveXObject("Msxml2.XMLHTTP");
	} catch (e) {
		try {
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		} catch (E) {
			xmlhttp = false;
		}
	}

	if (!xmlhttp && typeof XMLHttpRequest!='undefined') {
		xmlhttp = new XMLHttpRequest();
	}
return xmlhttp;
}

function MostrarConsulta(datos, id, flag){
	divResultado = document.getElementById(id);
	ajax=objetoAjax();
	ajax.open("GET", datos);
	ajax.onreadystatechange=function() {
		if (ajax.readyState==4) {
			if (flag == true){

				document.getElementById('tdmunicipios').style.visibility = 'visible';
				document.getElementById('tdcolonia').style.visibility = 'visible';
				document.getElementById('trbono').style.visibility = 'visible';
			}
			
			divResultado.innerHTML = ajax.responseText
		}
	}
	ajax.send(null)
}