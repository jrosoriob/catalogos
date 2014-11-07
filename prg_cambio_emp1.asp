<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html" charset="utf-8" />
<title>Entrada</title>
<link rel="stylesheet" type="text/css" href="estilos.css" />
</head>
<script language="JavaScript" type="text/javascript" src="ajax.js"></script>
<script LANGUAGE="JavaScript1.1">

<!-- Adaptado por Tk: Compatible con IE y NS -->

function derecha(e) {
if (navigator.appName == 'Netscape' && (e.which == 3 || e.which == 2)){
alert('Bot?n derecho inhabilitado')
return false;
}

else if (navigator.appName == 'Microsoft Internet Explorer' && (event.button == 2)){
alert('Bot?n derecho inhabilitado')
}
}
document.onmousedown=derecha

function abrirajax(pagina, par1, par2, div) 
		{
		MostrarConsulta(pagina+'?par='+par1+'&opcion='+par2, div); 
		return false;
		}
		

</script> 
<!--#include file="librerias/funciones.asp"-->      
<!--#include file="prg_indice_base.asp"-->                  

<body>
<%
Dim Conn, rs
set Conn=conexion4(Conn1)
Response.CodePage = 1252 

if session("sesusu")="" then
	Response.Redirect ("entrada.asp") 
end if
	
%>
	<form action="prg_cambio_emp2.asp" method="post" name="forma1" onSubmit="return validar(forma1)">
		<div align="center">
		<br><br>
		<h5>
			Cambio de Empleado
		</h5>
		<table border="0">
			<tr>
				<td id="texto_tablas2">Empleado</td>
				<td align="left"><select name="selemp">
					<option value="0" selected>Selecciona
					<%
					sql="select id_empleados, nombre, ap_paterno, ap_materno from catalogos.dbo.tc_empleados where estatus=1 order by 3,4,2;"
					set rs=Conn.execute(sql)
					
					while not rs.eof
					%>
						<option value="<%=rs("id_empleados")%>"><%=rs("ap_paterno")%>&nbsp;<%=rs("ap_materno")%>&nbsp;<%=rs("nombre")%>
					<%
						rs.movenext
					wend
					%>
					</select>
				</td>
			</tr>

			
		</table>
		<br><br>
		<input type="submit" value="Cambiar datos de Empleado">
		<br><br>
		<%
		rs.close
		close_conn(Conn)
		%>
		</div>
	</form>
</body>
</html>