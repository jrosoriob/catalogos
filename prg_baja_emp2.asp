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
		alert('Bot?n derecho inhabilitado')
		return false;
	}	else if (navigator.appName == 'Microsoft Internet Explorer' && (event.button == 2)){
		alert('Bot?n derecho inhabilitado')
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
	<div id="wrap">
		<div id="content">
			<div id="content_">
				<%display_children Session("app"), 0, 1, Session("sessuc"), Session("sesperfil")%>
					<form class="dark-matter">
				<%
				Dim Conn, rs
				set Conn=conexion4(Conn1)

				if session("sesusu")="" then
					Response.Redirect ("entrada.asp") 
				end if

				varanioact=year(now)
				varmesact=month(now)
				vardiaact=day(now)

				if varmesact<10 then
					cvarmesact="0"&varmesact
				else
					cvarmesact=""&varmesact
				end if

				if vardiaact<10 then
					cvardiaact="0"&vardiaact
				else
					cvardiaact=""&vardiaact
				end if

				varfecact=varanioact&cvarmesact&cvardiaact

				varselemp=request.form("selemp")
				comentario=request.form("comenta")

				on error resume next
					Conn.beginTrans
					sql="update catalogos.dbo.tc_empleados set estatus=2 where id_empleados="&varselemp&";"
					'response.write sql
					Conn.execute sql
					sql="insert into catalogos.dbo.td_movemp (desc_mov, fmovimiento, usuario_mov, id_empleado) values ('BAJA EMPLEADO', "&varfecact&", '"&session("sesusu")&"', "&varselemp&");"
					'response.write sql
					Conn.execute sql
					
					if len(comentario)>0 then
						sql="insert into catalogos.dbo.td_comentarios (comentario, fmovimiento, usuario_mov, id_empleado) values ('"&comentario&"', "&varfecact&", '"&session("sesusu")&"', "&varselemp&");"
						Conn.execute sql
					'	response.write "sql3.-"&sql&"<br>"
					end if
					
				if Err.Number <> 0 then
				    Conn.RollBackTrans
				    Conn.close
				    set Conn = nothing
				    response.write Err.Description
				else
				    Conn.CommitTrans
				    Conn.close
				    set Conn =nothing
				    %>
					<div id="mensajes">
						Informaci&oacute;n Borrada Correctamente.
						<button type="button" class="button" onClick="javascript: <%= Response.Redirect("prg_cambio_emp1.asp") %>">Volver</button>
					</div>
					<%
				end if
				%>
				</form>
			</div>
		</div>
	</div>

</body>
</html>