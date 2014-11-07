<!--#include file="librerias/funciones.asp"-->   
<%
Dim Conn, rs
set Conn=conexion4(Conn1)
vhacer=request.querystring("par")

if vhacer=1 then
	opcion=request.querystring("opcion")
	if opcion=2 or opcion=3 then
	%>
	<table width="100%">
	<tr>
		<td id="texto_tablas2" width="98">Bono</td>
		<td><input type="text" name="bono" maxlength="10" size="25" onChange="validanumero(this.value);"></td>
	</tr>
	</table>
	<%
	else
	%>
		<input type="hidden" name="bono" value="0">
	<%
	end if
end if

if vhacer=2 then
	opcion=request.querystring("opcion")

	%>
	<table width="100%">
		<tr>
			<td id="texto_tablas2" width="98">Municipios</td>
			<td><select name="selmun" onchange="abrirajax('prg_funcionesajax.asp', 3, this.value, 'dato3');">
				<option value="0" selected>Selecciona
				<%
				sql="select id_delegacion, nombre from tc_delegacion where id_estado="&opcion&" order by nombre;"
				set rs=Conn.execute(sql)
					
				while not rs.eof
				%>
					<option value="<%=rs("id_delegacion")%>"><%=rs("nombre")%>
				<%
					rs.movenext
				wend
			%>
			</td>
		</tr>
	</table>
	<%

end if

if vhacer=3 then
	opcion=request.querystring("opcion")

	%>
	<table width="100%">
		<tr>
			<td id="texto_tablas2" width="98">Colonia</td>
			<td><select name="selcol" >
				<option value="0" selected>Selecciona
				<%
				sql="select id_colonia, nombre from tc_colonia where id_delegacion="&opcion&" order by nombre;"
				set rs=Conn.execute(sql)
					
				while not rs.eof
				%>
					<option value="<%=rs("id_colonia")%>"><%=rs("nombre")%>
				<%
					rs.movenext
				wend
			%>
			</td>
		</tr>
	</table>
	<%

end if

if vhacer=4 then
	opcion=request.querystring("opcion")

	%>
	<table width="100%">
		<tr>
			<td id="texto_tablas_tit">
				<%
				sql="select count(*) cuenta from tc_empleados where usuario='"&opcion&"';"
				
				set rs=Conn.execute(sql)
				if rs("cuenta")>0 then
					
				%>
					El usuario que tecleaste ya existe
					<input type="hidden" name="existuser" value="1">
				<%else%>
					<input type="hidden" name="existuser" value="0">
				<%
				end if
				%>
			
			</td>
		</tr>
	</table>
	<%

end if

if vhacer=5 then
	opcion=request.querystring("opcion")

	%>
	<table width="100%">
		<tr>
			<td id="texto_tablas_tit">
				<%
				sql="select count(*) cuenta from tc_empleados where noemp="&opcion&";"
				
				set rs=Conn.execute(sql)
				if rs("cuenta")>0 then
					
				%>
					El n&uacute;mero de empleado que tecleaste ya existe
					<input type="hidden" name="existemp" value="1">
				<%else%>
					<input type="hidden" name="existemp" value="0">
				<%
				end if
				%>
			</td>
		</tr>
	</table>
	<%

end if

if vhacer=6 then
	opcion=request.querystring("opcion")

	%>
	<table width="100%">
		<tr>
			<td id="texto_tablas_tit">
				<%
				sql="select count(*) cuenta from tc_empleados where rfc='"&opcion&"';"
				
				set rs=Conn.execute(sql)
				if rs("cuenta")>0 then
					
				%>
					El RFC de empleado que tecleaste ya existe
					<input type="hidden" name="existrfc" value="1">
				<%else%>
					<input type="hidden" name="existrfc" value="0">
				<%
				end if
				%>
			</td>
		</tr>
	</table>
	<%

end if
%>
