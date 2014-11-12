<%
Function conexion4(cConn)
Set Conn1 = Server.CreateObject("ADODB.Connection")
'DSNisi="DRIVER={SQL Server};SERVER=192.168.1.9;UID=podesa;PWD=po120213desa;DATABASE=catalogos"
DSNisi="DRIVER={SQL Server};SERVER=192.168.1.62;UID=sa;PWD=abcd1234;DATABASE=catalogos"
Conn1.open DSNisi
set conexion4=Conn1
End Function

Function conexion5(cConn)
Set Conn1 = Server.CreateObject("ADODB.Connection")
DSNisi="DRIVER={SQL Server};SERVER=192.168.1.62;UID=sa;PWD=abcd1234;DATABASE=catalogos"
Conn1.open DSNisi
set conexion5=Conn1
End Function

function close_conn(cConn)
cConn.Close
set cConn = Nothing
end function

function mes(vmes)
	dim cmes
	cmes=""
	if vmes=1 then
		cmes="Enero"
	elseif vmes=2 then
		cmes="Febrero"
	elseif vmes=3 then
		cmes="Marzo"
	elseif vmes=4 then
		cmes="Abril"
	elseif vmes=5 then
		cmes="Mayo"
	elseif vmes=6 then
		cmes="Junio"
	elseif vmes=7 then
		cmes="Julio"
	elseif vmes=8 then
		cmes="Agosto"
	elseif vmes=9 then
		cmes="Septiembre"
	elseif vmes=10 then
		cmes="Octubre"
	elseif vmes=11 then
		cmes="Noviembre"
	elseif vmes=12 then
		cmes="Diciembre"
	end if
	mes=cmes
end function

Function display_children(app, parent, level, depto_id, puesto_id)
	Dim Conn, rsMenus, strHTML, rsValAcc
	Set Conn=conexion4(Conn1)

	sql = " SELECT  "
	sql = sql & " a.tcmenu_id "
	sql = sql & " ,a.tcmenu_descrip "
	sql = sql & " ,a.tcmenu_url "
	sql = sql & " ,a.tcmenu_parent "
	sql = sql & " ,a.tcmenu_estatus "
	sql = sql & " ,Deriv1.iCont "
	sql = sql & " FROM CATALOGOS.dbo.tc_menus a "
	sql = sql & " LEFT OUTER JOIN ( "
	sql = sql & " SELECT  "
	sql = sql & " tcmenu_parent, COUNT(*) AS [iCont] "
	sql = sql & " FROM CATALOGOS.dbo.tc_menus "
	sql = sql & " GROUP BY tcmenu_parent) AS Deriv1 ON a.tcmenu_id = Deriv1.tcmenu_parent "
	sql = sql & " WHERE a.tcmenu_parent = " & parent & " AND tcmenu_id_ap = " & app & " " 
	sql = sql & " AND tcmenu_estatus = 1 "
	sql = sql & " ORDER BY a.tcmenu_order "
	'Response.Write(sql & "<br><br>")

	Set rsMenus = Conn.Execute(sql)

	Response.Write("<ul id="&chr(34)&"nav"&chr(34)&">")

	While Not rsMenus.EOF
		If rsMenus("iCont") > 0 Then
			strHTML = "<li><a href=" & chr(34) & rsMenus("tcmenu_url") & chr(34) & ">" & rsMenus("tcmenu_descrip") 
			If level > 1 Then
				strHTML = strHTML & " &#65515; "
			End If
			strHTML = strHTML & " </a>"

			Response.Write(strHTML)
			display_children app, rsMenus("tcmenu_id"),level + 1, depto_id, puesto_id
			Response.Write("</li>")
		Else
			sql = " SELECT "
			sql = sql & " COUNT(*) AS [iCont] "
			sql = sql & " FROM CATALOGOS.dbo.tc_acceso_perfiles a "
			sql = sql & " WHERE a.pa_ap_id = " & app & " "
			sql = sql & " AND a.pa_cve_depto = " & depto_id & " "
			sql = sql & " AND a.pa_cve_puesto = " & puesto_id & " "
			sql = sql & " AND a.pa_tcmenu_id = " & rsMenus("tcmenu_id") & " "
			
			Set rsValAcc = Conn.Execute(sql)
			
			If rsValAcc("iCont") > 0 OR Session("sesusu") = "joseob" OR Session("leonhm") Then
				'Response.Write("<li><input type='checkbox' name='chk_tcmenu_id' value=" & rsMenus("tcmenu_id") & " checked='true'><i><b>" & rsMenus("tcmenu_descrip") & "</b></i></li>")
				Response.Write("<li><a href=" & chr(34) & rsMenus("tcmenu_url") & chr(34) & ">" & Server.HTMLEncode(rsMenus("tcmenu_descrip")) & "</a></li>")
			Else
				Response.Write("<li><a href="& chr(34) &"#"& chr(34) &">" & Server.HTMLEncode(rsMenus("tcmenu_descrip")) & "</a></li>")
			End If
			
			rsValAcc.Close()
			Set rsValAcc = Nothing
			'Response.Write("<li><a href=" & chr(34) & rsMenus("tcmenu_url") & chr(34) & ">" & rsMenus("tcmenu_descrip") & "</a></li>")
		End If
		rsMenus.MoveNext
	Wend

	Response.Write("</ul>")
	Conn.Close()
	Set Conn = Nothing
End function

Function display_menus(app, parent, level, depto_id, puesto_id)
	Dim Conn, rsMenus, rsValAcc
	Set Conn=conexion3(Conn1)
	sql = " SELECT  "
	sql = sql & " a.tcmenu_id "
	sql = sql & " ,a.tcmenu_descrip "
	sql = sql & " ,a.tcmenu_url "
	sql = sql & " ,a.tcmenu_parent "
	sql = sql & " ,Deriv1.iCont "
	sql = sql & " ,a.tcmenu_estatus "
	sql = sql & " FROM CATALOGOS.dbo.tc_menus a "
	sql = sql & " LEFT OUTER JOIN ( "
	sql = sql & " SELECT  "
	sql = sql & " tcmenu_parent, COUNT(*) AS [iCont] "
	sql = sql & " FROM CATALOGOS.dbo.tc_menus "
	sql = sql & " GROUP BY tcmenu_parent) AS Deriv1 ON a.tcmenu_id = Deriv1.tcmenu_parent "
	sql = sql & " WHERE a.tcmenu_parent = " & parent & " AND tcmenu_id_ap = " & app & " " 
	sql = sql & " ORDER BY a.tcmenu_order "
	'Response.Write(sql & "<br><br>")

	Set rsMenus = Conn.Execute(sql)
	Response.Write("<ul>")
	
	While Not rsMenus.EOF
		If rsMenus("iCont") > 0 Then
			Response.Write("<li><strong>" & Server.HTMLEncode(rsMenus("tcmenu_descrip")) & "</strong>")
			display_menus app, rsMenus("tcmenu_id"),level + 1, depto_id, puesto_id
			Response.Write("</li>")
		Else
			sql = " SELECT "
			sql = sql & " COUNT(*) AS [iCont] "
			sql = sql & " FROM CATALOGOS.dbo.tc_acceso_perfiles a "
			sql = sql & " WHERE a.pa_ap_id = " & app & " "
			sql = sql & " AND a.pa_cve_depto = " & depto_id & " "
			sql = sql & " AND a.pa_cve_puesto = " & puesto_id & " "
			sql = sql & " AND a.pa_tcmenu_id = " & rsMenus("tcmenu_id") & " "
			
			Set rsValAcc = Conn.Execute(sql)
			
			If rsValAcc("iCont") > 0 Then
				If rsMenus("tcmenu_estatus") = 0 Then
					Response.Write("<li><input type='checkbox' name='chk_tcmenu_id' value=" & rsMenus("tcmenu_id") & " checked='true'><i><b>" & Server.HTMLEncode(rsMenus("tcmenu_descrip")) & " <img src='images/gt9039p/16x16/bullet_red.png' border='0'></b></i></li>")
				Else
					Response.Write("<li><input type='checkbox' name='chk_tcmenu_id' value=" & rsMenus("tcmenu_id") & " checked='true'><i><b>" & Server.HTMLEncode(rsMenus("tcmenu_descrip")) & "</b></i></li>")
				End If
			Else
				If rsMenus("tcmenu_estatus") = 0 Then
					Response.Write("<li><input type='checkbox' name='chk_tcmenu_id' value=" & rsMenus("tcmenu_id") & "><i><b>" & Server.HTMLEncode(rsMenus("tcmenu_descrip")) & " <img src='images/gt9039p/16x16/bullet_red.png' border='0'></b></i></li>")
				Else
					Response.Write("<li><input type='checkbox' name='chk_tcmenu_id' value=" & rsMenus("tcmenu_id") & "><i>" & Server.HTMLEncode(rsMenus("tcmenu_descrip")) & "</i></li>")
				End If
			End If
			
			rsValAcc.Close()
			Set rsValAcc = Nothing
		End If
		rsMenus.MoveNext
	Wend
	Response.Write("</ul>")
	Conn.Close()
	Set Conn = Nothing
End function
%>
