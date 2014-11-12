<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html" charset="utf-8" />
<title>Entrada</title>
	<link href="css/styles_v2.css" rel="stylesheet" type="text/css">
	<link href="css/forms.css" rel="stylesheet" type="text/css">
</head>
<script language="JavaScript" type="text/javascript" src="ajax.js"></script>
<script LANGUAGE="JavaScript1.1">

<!-- Adaptado por Tk: Compatible con IE y NS -->

function derecha(e) {
	if (navigator.appName == 'Netscape' && (e.which == 3 || e.which == 2)){
		alert('Botón derecho inhabilitado')
	return false;
	}
	else if (navigator.appName == 'Microsoft Internet Explorer' && (event.button == 2)){
		alert('Botón derecho inhabilitado')
	}
}
document.onmousedown=derecha

function abrirajax(pagina, par1, par2, div){
		MostrarConsulta(pagina+'?par='+par1+'&opcion='+par2, div); 
	return false;
}
		

</script> 
<!--#include file="librerias/funciones.asp"-->      
<!--#include file="prg_indice_base.asp"-->                  

<body>
<%
Dim Conn, rs, employed_id, employed_name
set Conn=conexion4(Conn1)

if session("sesusu")="" then
	Response.Redirect ("entrada.asp") 
end if

	If Request.QueryString("employed_id") <> "" Then
		employed_id = Request.QueryString("employed_id")
		employed_name = Request.QueryString("employed_name")
	Else
		employed_id = 0
		Response.Redirect("prg_employed_lt.asp")
	End If

%>
	<div id="wrap">
		<div id="content">
			<div id="content_">
					<%display_children Session("app"), 0, 1, Session("sessuc"), Session("sesperfil")%>
				<form action="prg_baja_emp2.asp" method="post" name="forma1" onSubmit="return validar(forma1)" class="dark-matter">
					<h1>
					<img src="images/gt9039p/32x32/group_delete.png" border="0"> Baja de Empleado
				</h1>
					<div align="center">
					<table border="0">
						<tr style="vertical-align: top;">
							<td>Empleado</td>
							<td align="left">
								<input type="hidden" name="selemp" value="<%=Request.QueryString("employed_id")%>">
								<%
									Response.Write(Request.QueryString("employed_name"))
								%>
								<br>
								<br>
							</td>
						</tr>
						<tr>
							<td id="texto_tablas2">Comentarios</td>
							<td align="left">
								<input type="text" name="comenta" maxlength="255" size="45">
							</td>
						</tr>						
					</table>
					<br><br>
					<button type="submit" class="button">Dar de baja</button>
					<button type="button" class="button" onClick="javascript: history.go(-1)">Cancelar</button>
					<br><br>
					
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>