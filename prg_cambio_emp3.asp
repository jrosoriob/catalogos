<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html" charset="utf-8" />
<title>Entrada</title>
<link rel="stylesheet" type="text/css" href="estilos.css" />
</head>
<script language="JavaScript" type="text/javascript" src="ajax.js"></script>

<!--#include file="librerias/funciones.asp"-->      
<!--#include file="prg_indice_base.asp"-->                  

<body>
<%
Dim Conn, rs
set Conn=conexion4(Conn1)
dim arreglo(35)
dim arreglo2(35,3)
Dim arreglo3(35)

if session("sesusu")="" then
	Response.Redirect ("entrada.asp") 
end if

arreglo3(0)=ucase(request.form("nombre"))
arreglo3(1)=ucase(request.form("apaterno"))
arreglo3(2)=ucase(request.form("amaterno"))
arreglo3(3)=request.form("seldepto")
vardiaing=request.form("diaing")
varmesing=request.form("mesing")
varanioing=request.form("anioing")
vardianac=request.form("dianac")
varmesnac=request.form("mesnac")
varanionac=request.form("anionac")
arreglo3(6)=ucase(request.form("rfc"))
arreglo3(7)=ucase(request.form("curp"))
arreglo3(8)=ucase(request.form("nss"))
arreglo3(9)=request.form("selpuesto")
arreglo3(10)=ucase(request.form("plaza"))
arreglo3(11)=request.form("sueldo")
arreglo3(12)=request.form("selbono")
if arreglo3(12)=4 or arreglo3(12)=1 then
	arreglo3(13)=0
else
	arreglo3(13)=request.form("bono")
end if
arreglo3(14)=ucase(request.form("calle"))
arreglo3(15)=request.form("selcol")
arreglo3(16)=request.form("correo")
arreglo3(17)=request.form("noemp")
arreglo3(18)=request.form("cuentadep")
arreglo3(19)=request.form("selbanco")
arreglo3(20)=request.form("seltipcta")
arreglo3(21)=request.form("sexo")
arreglo3(22)=request.form("edociv")
arreglo3(23)=request.form("estudio")
arreglo3(24)=request.form("tel")
arreglo3(25)=request.form("cel")

comentario=request.form("comenta")

if varmesing<10 then
	cvarmesing="0"&varmesing
else
	cvarmesing=""&varmesing
end if

if vardiaing<10 then
	cvardiaing="0"&vardiaing
else
	cvardiaing=""&vardiaing
end if

if varmesnac<10 then
	cvarmesnac="0"&varmesnac
else
	cvarmesnac=""&varmesnac
end if

if vardianac<10 then
	cvardianac="0"&vardianac
else
	cvardianac=""&vardianac
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

arreglo3(4)=varanioing&cvarmesing&cvardiaing
arreglo3(5)=varanionac&cvarmesnac&cvardianac
varfecact=varanioact&cvarmesact&cvardiaact

varselemp=request.form("selemp")

sql="select isnull(nombre,0) as nombre, isnull(ap_paterno,0) as ap_paterno, isnull(ap_materno,0) asap_materno, isnull(cve_depto,0) as cve_depto, isnull(fingreso,0) as fingreso, isnull(fnacimiento,0) as fnacimiento, isnull(rfc,0) as rfc, isnull(curp,0) as curp, isnull(nss,0) as nss, isnull(cve_puesto,0) ascve_puesto, isnull(plaza,0) as plaza, isnull(sueldo,0) as sueldo, isnull(tipobono,0) as tipobono, isnull(bono,0) as bono, isnull(direccion,0) as direccion, isnull(id_colonia,0) as id_colonia, isnull(correo,0) as correo, isnull(noemp,0) as noemp, isnull(cuenta_dep,0) as cuenta_dep, isnull(banco,0) as banco, isnull(tipo_cuenta,0) as tipo_cuenta, isnull(sexo,0) as sexo, isnull(edocivil,0) as edocivil, isnull(estudios,0) as estudios, isnull(telefono,0) as telefono, isnull(celular,0) as celular from catalogos.dbo.tc_empleados where id_empleados = "&varselemp&";"
set rs=Conn.execute(sql)

cuenta=0

while cuenta<26
	arreglo(cuenta)=rs.fields(cuenta)
	cuenta=cuenta+1
wend

arreglo2(0, 0)="nombre"
arreglo2(1, 0)="ap_paterno"
arreglo2(2, 0)="ap_materno"
arreglo2(3, 0)="cve_depto"
arreglo2(4, 0)="fingreso"
arreglo2(5, 0)="fnacimiento"
arreglo2(6, 0)="rfc"
arreglo2(7, 0)="curp"
arreglo2(8, 0)="nss"
arreglo2(9, 0)="cve_puesto"
arreglo2(10, 0)="plaza"
arreglo2(11, 0)="sueldo"
arreglo2(12, 0)="tipobono"
arreglo2(13, 0)="bono"
arreglo2(14, 0)="direccion"
arreglo2(15, 0)="id_colonia"
arreglo2(16, 0)="correo"
arreglo2(17, 0)="noemp"
arreglo2(18, 0)="cuenta_dep"
arreglo2(19, 0)="banco"
arreglo2(20, 0)="tipo_cuenta"
arreglo2(21, 0)="sexo"
arreglo2(22, 0)="edocivil"
arreglo2(23, 0)="estudios"
arreglo2(24, 0)="telefono"
arreglo2(25, 0)="celular"

arreglo2(0, 1)="CAMBIO DE NOMBRE"
arreglo2(1, 1)="CAMBIO DE AP_PATERNO"
arreglo2(2, 1)="CAMBIO DE AP_MATERNO"
arreglo2(3, 1)="CAMBIO DE CVE_DEPTO"
arreglo2(4, 1)="CAMBIO DE FINGRESO"
arreglo2(5, 1)="CAMBIO DE FNACIMIENTO"
arreglo2(6, 1)="CAMBIO DE RFC"
arreglo2(7, 1)="CAMBIO DE CURP"
arreglo2(8, 1)="CAMBIO DE NSS"
arreglo2(9, 1)="CAMBIO DE CVE_PUESTO"
arreglo2(10, 1)="CAMBIO DE PLAZA"
arreglo2(11, 1)="CAMBIO DE SUELDO"
arreglo2(12, 1)="CAMBIO DE TIPOBONO"
arreglo2(13, 1)="CAMBIO DE BONO"
arreglo2(14, 1)="CAMBIO DE DIRECCION"
arreglo2(15, 1)="CAMBIO DE ID_COLONIA"
arreglo2(16, 1)="CAMBIO DE CORREO"
arreglo2(17, 1)="CAMBIO DE NOEMP"
arreglo2(18, 1)="CAMBIO DE CUENTA_DEP"
arreglo2(19, 1)="CAMBIO DE BANCO"
arreglo2(20, 1)="CAMBIO DE TIPO_CUENTA"
arreglo2(21, 1)="CAMBIO DE SEXO"
arreglo2(22, 1)="CAMBIO DE EDOCIVIL"
arreglo2(23, 1)="CAMBIO DE ESTUDIOS"
arreglo2(24, 1)="CAMBIO DE TELEFONO"
arreglo2(25, 1)="CAMBIO DE CELULAR"

arreglo2(0, 2)=1
arreglo2(1, 2)=1
arreglo2(2, 2)=1
arreglo2(3, 2)=2
arreglo2(4, 2)=2
arreglo2(5, 2)=2
arreglo2(6, 2)=1
arreglo2(7, 2)=1
arreglo2(8, 2)=1
arreglo2(9, 2)=2
arreglo2(10, 2)=1
arreglo2(11, 2)=2
arreglo2(12, 2)=2
arreglo2(13, 2)=2
arreglo2(14, 2)=1
arreglo2(15, 2)=2
arreglo2(16, 2)=1
arreglo2(17, 2)=2
arreglo2(18, 2)=1
arreglo2(19, 2)=2
arreglo2(20, 2)=2
arreglo2(21, 2)=2
arreglo2(22, 2)=2
arreglo2(23, 2)=2
arreglo2(24, 2)=1
arreglo2(25, 2)=1

rs.close

on error resume next

	Conn.beginTrans
	
	cuenta2=0
	while cuenta2<cuenta
	
		var1=arreglo(cuenta2)
		var2=arreglo3(cuenta2)
		campo=arreglo2(cuenta2, 0)
		msg=arreglo2(cuenta2, 1)
		tipo=arreglo2(cuenta2, 2)

		'response.write "el valor de cuenta2 es "&cuenta2&" El campo es "&campo&" el valor act es "&var2&" y el anterior "&var1&" actualizando el campo "&campo&"<br>"
		
		if ltrim(rtrim(var1))<>ltrim(rtrim(var2)) then
			
			if tipo=1 then
				sql="update tc_empleados set "&campo&"='"&var2&"' where id_empleados="&varselemp&";"
			else
				sql="update tc_empleados set "&campo&"="&var2&" where id_empleados="&varselemp&";"
			end if
			Conn.execute sql
			'response.write sql
			sql="insert into td_movemp (desc_mov, valor_ant, valor_act, fmovimiento, usuario_mov, id_empleado) values ('"&msg&"', '"&var1&"', '"&var2&"', "&varfecact&", '"&session("sesusu")&"', "&varselemp&");"
			Conn.execute sql
		end if

		cuenta2=cuenta2+1

		wend
		
		if len(comentario)>0 then
			sql="insert into td_comentarios (comentario, fmovimiento, usuario_mov, id_empleado) values ('"&comentario&"', "&varfecact&", '"&session("sesusu")&"', "&varselemp&");"
			Conn.execute sql
		end if
	
if Err.Number <> 0 then
    Conn.RollBackTrans
    Conn.close
    set Conn = nothing
	%>
	<div id="mensajes">
	<%
		response.write Err.Description
	%>
	</div>
    <%
else
    Conn.CommitTrans
    Conn.close
    set Conn =nothing
    %>
	<div id="mensajes">
		Informaci&oacute;n Actualizada Correctamente.
	</div>
	<%
end if

		
		%>
		
</body>
</html>
