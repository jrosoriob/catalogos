<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html" charset="utf-8" />
<title>Entrada</title>
	<link href="css/styles_v2.css" rel="stylesheet" type="text/css">
	<link href="css/forms.css" rel="stylesheet" type="text/css">
	<link href="css/tables.css" rel="stylesheet" type="text/css">
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
<div id="wrap">
	<div id="content">
		<div id="content_">
				<%display_children Session("app"), 0, 1, Session("sessuc"), Session("sesperfil")%>
			<form action="prg_cambio_emp2.asp" method="post" name="forma1" onSubmit="return validar(forma1)"  class="dark-matter">
				<h1>
					<img src="images/gt9039p/32x32/group.png" border="0"> Catálogo de empleados
				</h1>
				<div style="text-align: right">
					<a href="prg_cambio_emp2.asp?employed_id=0" class="link-btn">Agregar empleado</a>
					<br>
					<br>
				</div>
				<div class="datagrid">
					<table>
						<thead>						
							<tr>
								<th align="center">No.</th>
								<th align="center">Empleado</th>
								<th align="center">RFC</th>
								<th align="center" colspan="2">Acciones</th>
							</tr>
						</thead>
						<tbody>
						
						<%
							sql="select id_empleados, rfc ,RTRIM(LTRIM(nombre)) + ' ' + RTRIM(LTRIM(ap_paterno)) + ' ' + RTRIM(LTRIM(ap_materno)) AS [employed] from catalogos.dbo.tc_empleados where estatus=1 order by 1,2,3;"
							set rs=Conn.execute(sql)
							
							rowcount = 0
							clase = "alt"
							while not rs.eof
							rowcount = rowcount + 1
						%>
							<tr class="<%=clase%>">
								<td align="right" valign="top"><%=rs("id_empleados")%></td>
								<td align="left" valign="top">
									<a class="link-btn-black" href="prg_cambio_emp2.asp?employed_id=<%=rs("id_empleados")%>"><%=rs("employed")%></a>
								</td>
								<td align="left" valign="top">
									<a class="link-btn-black" href="prg_cambio_emp2.asp?employed_id=<%=rs("id_empleados")%>"><%=rs("rfc")%></a>
								</td>
								<td align="center">
									<a class="link-btn-black" href="prg_cambio_emp2.asp?employed_id=<%=rs("id_empleados")%>">
										<img src="images/gt9039p/16x16/group_edit.png" border="0" alt="Editar" title="Editar"></a>
								</td>
								<td align="center">
									<a class="link-btn-black" href="prg_baja_emp1.asp?employed_id=<%=rs("id_empleados")%>&employed_name=<%=rs("employed")%>">
										<img src="images/gt9039p/16x16/group_delete.png" border="0" alt="Baja" title="Baja">
									</a>
								</td>
							</tr>
						<%
							If clase = "alt" Then
								clase = ""
							Else
								clase = "alt"
							End If

							rs.movenext
						wend
						%>
						</tbody>
						<tfoot>
							<tr class="alt1">
								<td colspan="7" align="right"><strong><%=rowcount%> Registros Encontrados</strong></td>
							</tr>
						</tfoot>
					</table>
					
					<%
					rs.close
					close_conn(Conn)
					%>
				</div>
				<br>
			</form>
		</div>
	</div>
</div>
</body>
</html>