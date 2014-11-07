<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Entrada</title>
<link href="css/styles_v2.css" rel="stylesheet" type="text/css">
<link href="css/forms.css" rel="stylesheet" type="text/css">
</head>

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
</script> 
<!--#include file="librerias/funciones.asp"-->      
                  
<%
Dim Conn, rs
set Conn=conexion4(Conn1)

varusu=request.form("user")
varpwd=request.form("clave")

	sql="select count(*) as cuenta from catalogos.dbo.tc_empleados where usuario='"&varusu&"' and catalogos.dbo.fnLeeClave(claveacceso)='"&varpwd&"';"
	set rs=Conn.execute(sql)
	cuenta=rs("cuenta")

if cuenta>=1 then 
	sql="select cve_puesto, cve_depto, nombre, ap_paterno, ap_materno from catalogos.dbo.tc_empleados where usuario='"&varusu&"' and clave='"&varpwd&"' and estatus=1;"
	set rs=Conn.execute(sql)
	perfil=rs("cve_puesto")
	suc=rs("cve_depto")
	session("sesusu")=varusu
	session("sesperfil")=perfil
	session("sessuc")=suc
	Session.Timeout = 60
	
end if%>


<%
	if cuenta>=1 then
	

	%>
	<!--#include file="prg_indice_base.asp"-->  
	<body>
	<div id="wrap">
		
		<div id="content">
			<div id="content_">
				<form action="" method="post" name="forma1" class="dark-matter">
						<h1>
							<img src="images/gt9039p/32x32/group.png" border="0"> Bienvenido
							<span>
								<strong class="perfilData">	<%=rs("nombre")%>&nbsp;<%=rs("ap_paterno")%>&nbsp;<%=rs("ap_materno")%></strong>
							</span>
						</h1>
					<%	
					else
					%>
				</form>
			</div>
		</div>
	</div>

		<form action="" method="post" name="forma1" >
				<h1>
					Acceso Denegado, verifica tus datos!!!
					<br><br>
					<input type="button" onclick="javascript:history.go(-1)" value="Regresar">
					<br><br>
					
				</h1>
			<%
			end if

		rs.close
		close_conn(Conn)
			%>

		</form>
	</body>	
</html>