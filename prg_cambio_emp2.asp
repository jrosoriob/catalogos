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



function abrirajax(pagina, par1, par2, div) 
		{
		MostrarConsulta(pagina+'?par='+par1+'&opcion='+par2, div); 
		return false;
		}
		
function validanumero(numero){
	if (!/^([0-9])*$/.test(numero))
	alert("El valor " + numero + " no es un n"+String.fromCharCode(250)+"mero");
	}
	
function validar(formulario) {

	if (formulario.nombre.value.length <=0) {
		alert("Por favor teclea un nombre.");
		formulario.nombre.focus();
		return (false);
		}
		
	if (formulario.apaterno.value.length <=0) {
		alert("Por favor teclea un apellido paterno.");
		formulario.apaterno.focus();
		return (false);
		}
		
	if (formulario.amaterno.value.length <=0) {
		alert("Por favor teclea un apellido materno.");
		formulario.amaterno.focus();
		return (false);
		}
		
	if (formulario.sexo.value <=0) {
		alert("Por favor selecciona el sexo.");
		formulario.sexo.focus();
		return (false);
		}
		
	if (formulario.edociv.value <=0) {
		alert("Por favor selecciona el Estado Civil.");
		formulario.edociv.focus();
		return (false);
		}
		
	if (formulario.estudio.value <=0) {
		alert("Por favor selecciona el Nivel Maximo de Estudios.");
		formulario.estudio.focus();
		return (false);
		}

	if (formulario.seldepto.value <=0) {
		alert("Por favor selecciona el departamento.");
		formulario.seldepto.focus();
		return (false);
		}
	
	if (formulario.diaing.value <=0) {
		alert("Por favor selecciona el D"+String.fromCharCode(161)+"a de Ingreso.");
		formulario.diaing.focus();
		return (false);
		}
		
	if (formulario.mesing.value <=0) {
		alert("Por favor selecciona el Mes de Ingreso.");
		formulario.mesing.focus();
		return (false);
		}
		
	if (formulario.anioing.value <=0) {
		alert("Por favor selecciona el A"+String.fromCharCode(164)+"o de Ingreso.");
		formulario.anioing.focus();
		return (false);
		}
	
	if (formulario.dianac.value <=0) {
		alert("Por favor selecciona el D"+String.fromCharCode(161)+"a de Nacimiento.");
		formulario.dianac.focus();
		return (false);
		}
		
	if (formulario.mesnac.value <=0) {
		alert("Por favor selecciona el Mes de Nacimiento.");
		formulario.mesnac.focus();
		return (false);
		}
		
	if (formulario.anionac.value <=0) {
		alert("Por favor selecciona el A"+String.fromCharCode(164)+"o de Nacimiento.");
		formulario.anionac.focus();
		return (false);
		}

	if (formulario.rfc.value.length <=0) {
		alert("Por favor teclea un RFC.");
		formulario.rfc.focus();
		return (false);
		}
		
	if (formulario.curp.value.length <=0) {
		alert("Por favor teclea el CURP.");
		formulario.curp.focus();
		return (false);
		}
		
	if (formulario.nss.value.length <=0) {
		alert("Por favor teclea el N"+String.fromCharCode(250)+"mero de Seguro Social.");
		formulario.nss.focus();
		return (false);
		}
		
	if (formulario.selpuesto.value <=0) {
		alert("Por favor selecciona el puesto.");
		formulario.selpuesto.focus();
		return (false);
		}

	if (formulario.plaza.value.length <=0) {
		alert("Por favor teclea la Plaza.");
		formulario.plaza.focus();
		return (false);
		}
		
	if (formulario.sueldo.value.length <=0) {
		alert("Por favor teclea el sueldo.");
		formulario.sueldo.focus();
		return (false);
		}
		
	if (formulario.selbono.value <=0) {
		alert("Por favor selecciona el tipo de Bono.");
		formulario.selbono.focus();
		return (false);
		}
		
	if(formulario.selbono.value==2 || formulario.selbono.value==3)
		{
		if (formulario.bono.value <=0) {
			alert("Por favor teclea el monto del bono.");
			formulario.bono.focus();
			return (false);
			}
		}
	
	if (formulario.estado.value <=0) {
		alert("Por favor selecciona el estado.");
		formulario.estado.focus();
		return (false);
		}

	if (formulario.estado.value > 0) {
		if (formulario.selmun.value <=0) {
			alert("Por favor selecciona el municipio.");
			formulario.selmun.focus();
			return (false);
			}
			
		if (formulario.selcol.value <=0) {
			alert("Por favor selecciona la colonia");
			formulario.selcol.focus();
			return (false);
			}
		}
		
	if (formulario.calle.value.length <=0) {
		alert("Por favor teclea la direcci?n.");
		formulario.calle.focus();
		return (false);
		}
		
	if (formulario.tel.value.length <=0) {
		alert("Por favor teclea el Tel?fono.");
		formulario.tel.focus();
		return (false);
		}
		
	if (formulario.cel.value.length <=0) {
		alert("Por favor teclea el Celular.");
		formulario.cel.focus();
		return (false);
		}
		
	if (formulario.usuario.value.length <=0) {
		alert("Por favor teclea el usuario.");
		formulario.usuario.focus();
		return (false);
		}

	if (formulario.correo.value.length <=0) {
		alert("Por favor teclea el correo.");
		formulario.correo.focus();
		return (false);
		}
		
	if (formulario.noemp.value.length <=0) {
		alert("Por favor teclea el No. de empleado.");
		formulario.noemp.focus();
		return (false);
		}
		
	if (formulario.selbanco.value <=0) {
		alert("Por favor selecciona el banco.");
		formulario.selbanco.focus();
		return (false);
		}

	if (formulario.seltipcta.value <=0) {
		alert("Por favor selecciona el tipo de cuenta a depositar.");
		formulario.seltipcta.focus();
		return (false);
		}
	
	if (formulario.cuentadep.value.length <=0) {
		alert("Por favor teclea el No. de cuenta a depositar.");
		formulario.cuentadep.focus();
		return (false);
		}	
		
	if (formulario.existuser.value==1 || formulario.existemp.value==1 || formulario.existrfc.value==1) {
		alert("Verfica los datos por favor, el empleado ya existe");
		formulario.nombre.focus();
		return (false);
		}		
		
		document.forma1.submit();
		
	}
</script> 
<!--#include file="librerias/funciones.asp"-->      
<!--#include file="prg_indice_base.asp"-->                  
<div id="wrap">
	<div id="content">
		<div id="content_">
			<%display_children Session("app"), 0, 1, Session("sessuc"), Session("sesperfil")%>
			<body>
			<%
				Dim Conn, rs
				set Conn=conexion4(Conn1)

				if session("sesusu")="" then
					Response.Redirect ("entrada.asp") 
				end if

				selemp=request.form("selemp")

				sql="select nombre, ap_paterno, ap_materno, cve_depto, fingreso, fnacimiento, rfc, curp, nss, cve_puesto, plaza, sueldo, tipobono, bono, direccion, id_colonia, usuario, clave, correo, noemp, estatus, cuenta_dep, banco, tipo_cuenta, sexo, edocivil, estudios, telefono, celular from catalogos.dbo.tc_empleados where id_empleados = "&selemp&";"
				set rs=Conn.execute(sql)

				varnombre=ucase(rs("nombre"))
				varap=ucase(rs("ap_paterno"))
				varam=ucase(rs("ap_materno"))
				varseldepto=rs("cve_depto")
				vardiaing=cint(mid(""&rs("fingreso"),7,2))
				varmesing=cint(mid(""&rs("fingreso"),5,2))
				varanioing=cint(mid(""&rs("fingreso"),1,4))
				vardianac=cint(mid(""&rs("fnacimiento"),7,2))
				varmesnac=cint(mid(""&rs("fnacimiento"),5,2))
				varanionac=cint(mid(""&rs("fnacimiento"),1,4))
				varrfc=ucase(rs("rfc"))
				varcurp=ucase(rs("curp"))
				varnss=ucase(rs("nss"))
				varselpuesto=rs("cve_puesto")
				varplaza=ucase(rs("plaza"))
				varsueldo=rs("sueldo")
				varselbono=rs("tipobono")
				varbono=rs("bono")
				varselcol=rs("id_colonia")
				varcalle=ucase(rs("direccion"))
				varusuario=rs("usuario")
				varcorreo=rs("correo")
				varnoemp=rs("noemp")
				varselbanco=rs("banco")
				varseltipcta=rs("tipo_cuenta")
				varcuentadep=rs("cuenta_dep")
				varsexo=rs("sexo")
				varedociv=rs("edocivil")
				varestudios=rs("estudios")
				vartelefono=rs("telefono")
				varcelular=rs("celular")

				sql="select a.id_delegacion, b.id_estado from tc_colonia a, tc_delegacion b where a.id_delegacion=b.id_delegacion and a.id_colonia= "&varselcol&";"

				set rs=Conn.execute(sql)
				varestado=rs("id_estado")
				vardelegacion=rs("id_delegacion")
				vartemp=rs.fields(0)
				'response.write vartemp
			%>

				<form action="prg_cambio_emp3.asp" method="post" name="forma1" onSubmit="return validar(forma1)" class="dark-matter">
				<div align="center">
				<br><br>
				<h5>
					Cambio de Empleado
				</h5>
				<table border="0">
					<tr>
						<td id="texto_tablas2">Nombre</td>
						<td align="left"><input type="text" name="nombre" maxlength="45" size="25" value="<%=varnombre%>"></td>
					</tr>
					<tr>
						<td id="texto_tablas2">Apellido Paterno</td>
						<td align="left"><input type="text" name="apaterno" maxlength="45" size="25" value="<%=varap%>"></td>
					</tr>
					<tr>
						<td id="texto_tablas2">Apellido Materno</td>
						<td align="left"><input type="text" name="amaterno" maxlength="45" size="25" value="<%=varam%>"></td>
					</tr>
					<tr>
						<td id="texto_tablas2">Sexo</td>
						<td align="left"><select name="sexo" class="select-normal">
							<option value="0" >Selecciona</option>
							<%
							sql="select id_sexo, descripcion from tc_sexo order by id_Sexo;"
							set rs=Conn.execute(sql)
							
							while not rs.eof
							
							if varsexo=rs("id_sexo") then
							%>
								<option value="<%=rs("id_sexo")%>" selected><%=rs("descripcion")%></option>
							<%
							else
							%>
								<option value="<%=rs("id_sexo")%>"><%=rs("descripcion")%></option>
							<%
							end if
								rs.movenext
							wend
							%>
							</select>
						</td>
					</tr>
					<tr>
						<td id="texto_tablas2">Estado Civil</td>
						<td align="left">
							<select name="edociv" class="select-normal">
							<option value="0" >Selecciona</option>
							<%
							sql="select id_estado, descripcion from tc_estadocivil order by descripcion;"
							set rs=Conn.execute(sql)
							
							while not rs.eof
							if varedociv=rs("id_estado") then
							%>
								<option value="<%=rs("id_estado")%>" selected><%=rs("descripcion")%></option>
							<%
							else
							%>
								<option value="<%=rs("id_estado")%>"><%=rs("descripcion")%></option>
							<%
							end if
								rs.movenext
							wend
							%>
							</select>
						</td>
					</tr>
					<tr>
						<td id="texto_tablas2">Nivel M&aacute;ximo de Estudios</td>
						<td align="left">
							<select name="estudio" class="select-normal">
							<option value="0" >Selecciona</option>
							<%
							sql="select id_estudios, descripcion from tc_estudios order by id_estudios;"
							set rs=Conn.execute(sql)
							
							while not rs.eof
							
							if varestudios=rs("id_estudios") then
							%>
								<option value="<%=rs("id_estudios")%>" selected><%=rs("descripcion")%></option>
							<%
							else
							%>
								<option value="<%=rs("id_estudios")%>"><%=rs("descripcion")%></option>
							<%
							end if
								rs.movenext
							wend
							%>
							</select>
						</td>
					</tr>
					<tr>
						<td id="texto_tablas2">Departamento</td>
						<td align="left"><select name="seldepto">
							<option value="0">Selecciona</option>
							<%
							sql="select id_departamento, descripcion from tc_departamento order by descripcion;"
							set rs=Conn.execute(sql)
							
							while not rs.eof
								if varseldepto=rs("id_departamento") then
							%>
								<option value="<%=rs("id_departamento")%>" selected><%=rs("descripcion")%></option>
							<%
								else
							%>
								<option value="<%=rs("id_departamento")%>"><%=rs("descripcion")%></option>
							<%	
								end if
								rs.movenext
							wend
							%>
							</select>
						</td>
					</tr>
					<tr>
						<td id="texto_tablas2">Fecha de Ingreso</td>
						<td align="left"><select name="diaing">
							<option value="0">D&iacute;a</option>
							<%
							vdia=1
							while vdia<=31
								if vdia<10 then
									cdia="0"&vdia
								else
									cdia=""&vdia
								end if
								
								if vdia=vardiaing then
								%>
								<option value="<%=vdia%>" selected><%=cdia%></option>
								<%
								else
								%>
								<option value="<%=vdia%>"><%=cdia%></option>
								<%
								end if
								
								vdia=vdia+1
							wend
							%>
							</select>
							
							<select name="mesing">
							<option value="0">Mes</option>
							<%
							vmes=1
							while vmes<=12
								cmes=mes(vmes)
								
								if vmes=varmesing then
								%>
								<option value="<%=vmes%>" selected><%=cmes%></option>
								<%
								else
								%>
								<option value="<%=vmes%>"><%=cmes%></option>
								<%
								end if
								
								vmes=vmes+1
							wend
							%>
							</select>
							
							<select name="anioing">
							<option value="0">A&ntilde;o</option>
							<%
							
							vanio=2004
							while vanio<=year(now)
							
								if vanio=varanioing then
								%>
								<option value="<%=vanio%>" selected><%=vanio%></option>
								<%
								else
								%>
								<option value="<%=vanio%>"><%=vanio%></option>
								<%
								end if
								vanio=vanio+1
							wend
							%>
							</select>
						</td>
					</tr>
					<tr>
						<td id="texto_tablas2">Fecha de Nacimiento</td>
						<td align="left">
							<select name="dianac">
							<option value="0">D&iacute;a</option>
							<%
							vdia=1
							while vdia<=31
								if vdia<10 then
									cdia="0"&vdia
								else
									cdia=""&vdia
								end if
								
								if vdia=vardianac then
								%>
								<option value="<%=vdia%>" selected><%=cdia%>
								<%
								else
								%>
								<option value="<%=vdia%>"><%=cdia%>
								<%
								end if
								vdia=vdia+1
							wend
							%>
							</select>
							/
							<select name="mesnac">
							<option value="0">Mes</option>
							<%
							vmes=1
							while vmes<=12
								cmes=mes(vmes)
								
								if vmes=varmesnac then
								%>
								<option value="<%=vmes%>" selected><%=cmes%>
								<%
								else
								%>
								<option value="<%=vmes%>"><%=cmes%>
								<%
								end if
								vmes=vmes+1
							wend
							%>
							</select>
							/
							<select name="anionac">
							<option value="0">A&ntilde;o</option>
							<%
							
							vanio=1930
							while vanio<=(year(now)-15)
							
								if vanio=varanionac then
								%>
								<option value="<%=vanio%>" selected><%=vanio%>
								<%
								else
								%>
								<option value="<%=vanio%>"><%=vanio%>
								<%
								end if
								vanio=vanio+1
							wend
							%> 
							</select>
						</td>
					</tr>
					<tr>
						<td id="texto_tablas2">RFC</td>
						<td align="left"><input type="text" name="rfc" maxlength="15" size="25" value="<%=varrfc%>" onChange="abrirajax('prg_funcionesajax.asp', 6, this.value, 'dato6');"></td>
					</tr>
					<tr>
						<td id="texto_tablas2" colspan="2"><div id="dato6"></div></td>				
					</tr>
					<tr>
						<td id="texto_tablas2">CURP</td>
						<td align="left"><input type="text" name="curp" maxlength="18" size="25" value="<%=varcurp%>"></td>
					</tr>
					<tr>
						<td id="texto_tablas2">Seguro Social</td>
						<td align="left"><input type="text" name="nss" maxlength="11" size="25" value="<%=varnss%>"></td>
					</tr>
					<tr>
						<td id="texto_tablas2">Puesto</td>
						<td><select name="selpuesto">
							<option value="0">Selecciona
							<%
							sql="select id_puesto, descripcion from tc_puesto order by descripcion;"
							set rs=Conn.execute(sql)
							
							while not rs.eof
							
							if varselpuesto=rs("id_puesto") then
							%>
								<option value="<%=rs("id_puesto")%>" selected><%=rs("descripcion")%>
							<%
							else
							%>
								<option value="<%=rs("id_puesto")%>"><%=rs("descripcion")%>
							<%
							end if
								rs.movenext
							wend
							%>
							</select>
						</td>
					</tr>
					<tr>
						<td id="texto_tablas2">Plaza</td>
						<td align="left"><input type="text" name="plaza" maxlength="25" size="25" value="<%=varplaza%>"></td>
					</tr>
					<tr>
						<td id="texto_tablas2">Sueldo</td>
						<td align="left"><input type="text" name="sueldo" maxlength="10" size="25" onChange="validanumero(this.value);" value="<%=varsueldo%>"></td>
					</tr>
					<tr>
						<td id="texto_tablas2">Tipo de Bono</td>
						<td align="left">
							<select name="selbono" onchange="abrirajax('prg_funcionesajax.asp', 1, this.value, 'dato1');">
							<option value="0">Selecciona</option>
							<%
							sql="select id_tipobono, descripcion from tc_tipobono order by descripcion;"
							set rs=Conn.execute(sql)
							
							while not rs.eof
							
							if rs("id_tipobono") = varselbono then
							%>
								<option value="<%=rs("id_tipobono")%>" selected><%=rs("descripcion")%></option>
							<%
							else
							%>
								<option value="<%=rs("id_tipobono")%>"><%=rs("descripcion")%></option>
							<%
							end if
								rs.movenext
							wend
							%>
							</select>
						</td>
					</tr>
					<tr id="dato1">
						<td id="texto_tablas2" colspan="2">
						<%if varselbono=2 or varselbono=3 then%>
						
								<td id="texto_tablas2" width="98">Bono</td>
								<td><input type="text" name="bono" maxlength="25" size="25" value="<%=varbono%>" onChange="validanumero(this.value);"></td>
						
						<%end if%>
						</div>
					</tr>
					<tr>
						<td id="texto_tablas2">Estado</td>
						<td align="left">
							<select name="estado" onchange="abrirajax('prg_funcionesajax.asp', 2, this.value, 'dato2');" class="select-normal">
							<option value="0" selected>Selecciona</option>
							<%
							sql="select id_estado, nombre from tc_estado order by id_estado;"
							set rs=Conn.execute(sql)
							
							while not rs.eof
							
							if rs("id_estado")=varestado then
							%>
								<option value="<%=rs("id_estado")%>" selected><%=rs("nombre")%></option>
							<%
							else
							%>
								<option value="<%=rs("id_estado")%>"><%=rs("nombre")%></option>
							<%
							end if
								rs.movenext
							wend
							%>
							</select>
						</td>
					</tr>
					<tr id="dato2">
						<td id="texto_tablas2">Municipio</td>
						<td id="texto_tablas2" colspan="2">
							<div id="dato2">
								<table width="100%">
									<tr>
										<td>
										<select name="selmun" onchange="abrirajax('prg_funcionesajax.asp', 3, this.value, 'dato3');" class="select-normal">
										<option value="0" selected>Selecciona</option>
										<%
										sql="select id_delegacion, nombre from tc_delegacion where id_estado="&varestado&" order by nombre;"
										set rs=Conn.execute(sql)
											
										while not rs.eof
										
										if rs("id_delegacion")=vardelegacion then
										%>
											<option value="<%=rs("id_delegacion")%>" selected><%=rs("nombre")%></option>
										<%
										else
										%>
											<option value="<%=rs("id_delegacion")%>"><%=rs("nombre")%></option>
										<%
										end if
											rs.movenext
										wend		
										%>
									</td>
								</tr>
							</table>
						</div>
					</td>
				</tr>
				<tr id="dato3">
				<td id="texto_tablas2" colspan="2">
				
					<tr>
						<td id="texto_tablas2">Colonia</td>
						<td><select name="selcol" >
							<option value="0" selected>Selecciona</option>
								<%
								sql="select id_colonia, nombre from tc_colonia where id_delegacion="&vardelegacion&" order by nombre;"
								set rs=Conn.execute(sql)
									
								while not rs.eof
								
								if rs("id_colonia")=varselcol then
								%>
									<option value="<%=rs("id_colonia")%>" selected><%=rs("nombre")%></option>
								<%
								else
								%>
									<option value="<%=rs("id_colonia")%>"><%=rs("nombre")%></option>
								<%
								end if
									rs.movenext
								wend
							%>
							</td>
						</tr>
			
				</td>				
			</tr>
			<tr>
				<td id="texto_tablas2">Calle</td>
				<td align="left"><input type="text" name="calle" maxlength="50" size="25" value="<%=varcalle%>" ></td>
			</tr>
			<tr>
				<td id="texto_tablas2">Tel&eacute;fono</td>
				<td align="left"><input type="text" name="tel" maxlength="10" size="25" value="<%=vartelefono%>"></td>
			</tr>
			<tr>
				<td id="texto_tablas2">Tel&eacute;fono Celular</td>
				<td align="left"><input type="text" name="cel" maxlength="15" size="25" value="<%=varcelular%>"></td>
			</tr>
			<tr>
				<td id="texto_tablas2">Usuario</td>
				<td align="left" id="texto_tablas2"><b><%=varusuario%></b></td>
			</tr>
			<tr>
				<td id="texto_tablas2" colspan="2"><div id="dato4"></div></td>				
			</tr>
			<tr>
				<td id="texto_tablas2">Correo</td>
				<td align="left"><input type="text" name="correo" maxlength="50" size="25" value="<%=varcorreo%>" ></td>
			</tr>
			<tr>
				<td id="texto_tablas2">Numero de Empleado</td>
				<td align="left"><input type="text" name="noemp" maxlength="11" size="25" onChange="abrirajax('prg_funcionesajax.asp', 5, this.value, 'dato5');" value="<%=varnoemp%>" ></td>
			</tr>
			<tr>
				<td id="texto_tablas2" colspan="2"><div id="dato5"></div></td>				
			</tr>
			<tr>
				<td id="texto_tablas2">Banco</td>
				<td align="left"><select name="selbanco">
					<option value="0" selected>Selecciona</option>
					<%
					sql="select id_banco, banco from tc_banco order by banco;"
					set rs=Conn.execute(sql)
					
					while not rs.eof
					
					if rs("id_banco")=varselbanco then
					%>
						<option value="<%=rs("id_banco")%>" selected><%=rs("banco")%></option>
					<%
					else
					%>
						<option value="<%=rs("id_banco")%>"><%=rs("banco")%></option>
					<%
					end if
						rs.movenext
					wend
					%>
					</select>
				</td>
			</tr>
			<tr>
				<td id="texto_tablas2">Tipo de Cuenta</td>
				<td align="left"><select name="seltipcta">
					<option value="0" selected>Selecciona</option>
					<%
					sql="select id_tipocuenta, descripcion from tc_tipocuenta order by descripcion;"
					set rs=Conn.execute(sql)
					
					while not rs.eof
					
					if rs("id_tipocuenta")=varseltipcta then
					%>
						<option value="<%=rs("id_tipocuenta")%>" selected><%=rs("descripcion")%></option>
					<%
					else
					%>
						<option value="<%=rs("id_tipocuenta")%>"><%=rs("descripcion")%></option>
					<%
					end if
						rs.movenext
					wend
					%>
					</select>
				</td>
			</tr>
			<tr>
				<td id="texto_tablas2">Cuenta de Deposito</td>
				<td align="left"><input type="text" name="cuentadep" maxlength="20" size="25" value="<%=varcuentadep%>"></td>
			</tr>
			<tr>
				<td id="texto_tablas2">Comentarios</td>
				<td align="left"><input type="text" name="comenta" maxlength="255" size="45"></td>
			</tr>
		</table>
		<br><br>
				<input type="submit" value="Actualizar Datos">
				<br><br>
				<%
				rs.close
				close_conn(Conn)
				%>
				</div>
			<input type="hidden" value="<%=selemp%>" name="selemp">
				</form>
			</div>
		</div>
	</div>
</body>
</html>