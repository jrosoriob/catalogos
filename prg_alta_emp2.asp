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

					varnombre=ucase(request.form("nombre"))
					varap=ucase(request.form("apaterno"))
					varam=ucase(request.form("amaterno"))
					varsexo=request.form("sexo")
					varedociv=request.form("edociv")
					varestudio=request.form("estudio")
					varseldepto=request.form("seldepto")
					vardiaing=request.form("diaing")
					varmesing=request.form("mesing")
					varanioing=request.form("anioing")
					vardianac=request.form("dianac")
					varmesnac=request.form("mesnac")
					varanionac=request.form("anionac")
					varrfc=ucase(request.form("rfc"))
					varcurp=ucase(request.form("curp"))
					varnss=ucase(request.form("nss"))
					varselpuesto=request.form("selpuesto")
					varplaza=ucase(request.form("plaza"))
					varsueldo=request.form("sueldo")
					varselbono=request.form("selbono")
					varbono=request.form("bono")
					varestado=request.form("estado")
					varselmun=request.form("selmun")
					varselcol=request.form("selcol")
					varcalle=ucase(request.form("calle"))
					vartel=ucase(request.form("tel"))
					varcel=ucase(request.form("cel"))
					varusuario=request.form("usuario")
					varcorreo=request.form("correo")
					varnoemp=request.form("noemp")
					varselbanco=request.form("selbanco")
					varseltipcta=request.form("seltipcta")
					varcuentadep=request.form("cuentadep")
					varIFE	=	request.form("cbxine")
					varcomp_dom	=	request.form("cbxdomicilio")
					varpagare	=	request.form("cbxpagare")
					varcontrato	=	request.form("cbxcontrato")

					IF request.form("cbxine") = "on" then varIFE = 1 ELSE varIFE = 0 end IF
					IF request.form("cbxdomicilio") = "on" then varcomp_dom = 1 ELSE varcomp_dom = 0 end IF
					IF request.form("cbxpagare") = "on" then varpagare = 1 ELSE varpagare = 0 end IF
					IF request.form("cbxcontrato") = "on" then varcontrato = 1 ELSE varcontrato = 0 end IF

				
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

					varfecing=varanioing&cvarmesing&cvardiaing
					varfecnac=varanionac&cvarmesnac&cvardianac
					varfecact=varanioact&cvarmesact&cvardiaact

					on error resume next
						Conn.beginTrans
						sql="insert into catalogos.dbo.tc_empleados (nombre, ap_paterno, ap_materno, cve_depto, fingreso, fnacimiento, rfc, curp, nss, cve_puesto, plaza, sueldo, tipobono, bono, direccion, id_colonia, usuario, clave, correo, noemp, estatus, cuenta_dep, banco, tipo_cuenta, sexo, edocivil, estudios, telefono, celular, claveacceso, ife, comp_dom, pagare, contrato) values ('"&varnombre&"', '"&varap&"', '"&varam&"', "&varseldepto&", "&varfecing&", "&varfecnac&", '"&varrfc&"', '"&varcurp&"', '"&varnss&"', "&varselpuesto&", '"&varplaza&"', "&varsueldo&", "&varselbono&", "&varbono&", '"&varcalle&"', "&varselcol&", '"&varusuario&"', '"&varusuario&"', '"&varcorreo&"', "&varnoemp&", 1, '"&varcuentadep&"', "&varselbanco&", "&varseltipcta&", "&varsexo&", "&varedociv&", "&varestudio&", '"&vartel&"', '"&varcel&"',catalogos.dbo.fnColocaClave('"&varusuario&"'), "&varIFE&", "&varcomp_dom&", "&varpagare&", "&varcontrato&" );"
						
						response.write sql
							Conn.execute sql
						
						
						
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
							<br><br>Informaci&oacute;n Grabada Correctamente.
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
