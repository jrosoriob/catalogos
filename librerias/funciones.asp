<%
Function conexion4(cConn)
Set Conn1 = Server.CreateObject("ADODB.Connection")
'DSNisi="DRIVER={SQL Server};SERVER=192.168.1.9;UID=podesa;PWD=po120213desa;DATABASE=catalogos"
DSNisi="DRIVER={SQL Server};SERVER=192.168.1.10\PUNTOFERTA;UID=podesa;PWD=po120213desa;DATABASE=catalogos"
Conn1.open DSNisi
set conexion4=Conn1
End Function

Function conexion5(cConn)
Set Conn1 = Server.CreateObject("ADODB.Connection")
DSNisi="DRIVER={SQL Server};192.168.1.10\PUNTOFERTA;UID=podesa;PWD=po120213desa;DATABASE=catalogos"
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
%>
