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

  if(formulario.rfc.value.length < 13 || formulario.rfc.value.length ==0 || formulario.rfc.value == " "){
    alert("La longitud del RCF debe de ser 13 digitos");
    formulario.rfc.focus();
    return (false);
    }
    
  if(formulario.curp.value.length < 18 || formulario.curp.value.length ==0 || formulario.curp.value == " "){
    alert("La longitud del CURP debe de ser 18 digitos");
    formulario.curp.focus();
    return (false);
    }
    
  if(formulario.nss.value.length < 11 || formulario.nss.value.length ==0 || formulario.nss.value == " "){
    alert("La longitud del Número del seguro social debe de ser 11 digitos");
    formulario.nss.focus();
    alert(formulario.nss.value);
    return false;
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

<body>
<%
Dim Conn, rs
set Conn=conexion4(Conn1)

if session("sesusu")="" then
  Response.Redirect ("entrada.asp") 
end if
%>
<div id="wrap">
  
  <div id="content">
    <div id="content_">
      <%display_children Session("app"), 0, 1, Session("sessuc"), Session("sesperfil")%>
    <form action="prg_alta_emp2.asp" method="post" name="forma1" class="dark-matter">
      <br><br>
      <input type="hidden" name="employed_id" id="employed_id" value="<%=employed_id%>" />
        <h1>
          <img src="images/gt9039p/32x32/group_add.png" border="0"> Alta de Empleado
          <span>Por favor completa todos los campos</span>
        </h1>
      <div align="center">
        <table border="0">
          <tr>
            <td id="texto_tablas2">Nombre</td>
            <td align="left"><input type="text" name="nombre" maxlength="45" size="25"></td>
          </tr>
          <tr>
            <td id="texto_tablas2">Apellido Paterno</td>
            <td align="left"><input type="text" name="apaterno" maxlength="45" size="25"></td>
          </tr>
          <tr>
            <td id="texto_tablas2">Apellido Materno</td>
            <td align="left"><input type="text" name="amaterno" maxlength="45" size="25"></td>
          </tr>
          <tr>
            <td id="texto_tablas2">Sexo</td>
            <td align="left">
              <select name="sexo" class="select-normal">
                <option value="0" selected>Selecciona</option>
                <%
                  sql="select id_sexo, descripcion from tc_sexo order by id_Sexo;"
                  set rs=Conn.execute(sql)
              
                  while not rs.eof
                  %>
                    <option value="<%=rs("id_sexo")%>"><%=rs("descripcion")%></option>
                  <%
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
              <option value="0" selected>Selecciona</option>
              <%
              sql="select id_estado, descripcion from tc_estadocivil order by descripcion;"
              set rs=Conn.execute(sql)
              
              while not rs.eof
              %>
                <option value="<%=rs("id_estado")%>"><%=rs("descripcion")%></option>
              <%
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
              <option value="0" selected>Selecciona</option>
              <%
              sql="select id_estudios, descripcion from tc_estudios order by id_estudios;"
              set rs=Conn.execute(sql)
              
              while not rs.eof
              %>
                <option value="<%=rs("id_estudios")%>"><%=rs("descripcion")%></option>
              <%
                rs.movenext
              wend
              %>
              </select>
            </td>
          </tr>
          <tr>
            <td id="texto_tablas2">Departamento</td>
            <td align="left">
              <select name="seldepto" class="select-normal">
              <option value="0" selected>Selecciona</option> 
              <%
              sql="select id_departamento, descripcion from tc_departamento order by descripcion;"
              set rs=Conn.execute(sql)
              
              while not rs.eof
              %>
                <option value="<%=rs("id_departamento")%>"><%=rs("descripcion")%></option>
              <%
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
                %>
                <option value="<%=vdia%>"><%=cdia%></option>
                <%
                vdia=vdia+1
              wend
              %>
              </select>
              /
              <select name="mesing">
              <option value="0">Mes</option>
              <%
              vmes=1
              while vmes<=12
                cmes=mes(vmes)
                %>
                <option value="<%=vmes%>"><%=cmes%></option>
                <%
                vmes=vmes+1
              wend
              %>
              </select>
              /
              <select name="anioing">
              <option value="0">A&ntilde;o</option>
              <%
              
              vanio=2004
              while vanio<=year(now)
                %>
                <option value="<%=vanio%>"><%=vanio%></option>
                <%
                vanio=vanio+1
              wend
              %>
              </select>
            </td>
          </tr>
          <tr>
            <td id="texto_tablas2">Fecha de Nacimiento</td>
            <td align="left"><select name="dianac">
              <option value="0">D&iacute;a</option>
              <%
              vdia=1
              while vdia<=31
                if vdia<10 then
                  cdia="0"&vdia
                else
                  cdia=""&vdia
                end if
                %>
                <option value="<%=vdia%>"><%=cdia%></option>
                <%
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
                %>
                <option value="<%=vmes%>"><%=cmes%></option>
                <%
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
                %>
                <option value="<%=vanio%>"><%=vanio%></option>
                <%
                vanio=vanio+1
              wend
              %>
              </select>
            </td>
          </tr>
          <tr>
            <td id="texto_tablas2">RFC</td>
            <td align="left"><input type="text" name="rfc" maxlength="13" size="25" onChange="abrirajax('prg_funcionesajax.asp', 6, this.value, 'dato6');"></td>
          </tr>
          <tr>
            <td id="texto_tablas2" colspan="2"><div id="dato6"></div></td>        
          </tr>
          <tr>
            <td id="texto_tablas2">CURP</td>
            <td align="left"><input type="text" name="curp" maxlength="18" size="25"></td>
          </tr>
          <tr>
            <td id="texto_tablas2">Seguro Social</td>
            <td align="left"><input type="text" name="nss" maxlength="11" size="25"></td>
          </tr>
          <tr>
            <td id="texto_tablas2">Puesto</td>
            <td>
              <select name="selpuesto" class="select-normal">
              <option value="0" selected>Selecciona</option>
              <%
              sql="select id_puesto, descripcion from tc_puesto order by descripcion;"
              set rs=Conn.execute(sql)
              
              while not rs.eof
              %>
                <option value="<%=rs("id_puesto")%>"><%=rs("descripcion")%>
              <%
                rs.movenext
              wend
              %>
              </select>
            </td>
          </tr>
          <tr>
            <td id="texto_tablas2">Plaza</td>
            <td align="left"><input type="text" name="plaza" maxlength="25" size="25"></td>
          </tr>
          <tr>
            <td id="texto_tablas2">Sueldo</td>
            <td align="left"><input type="text" name="sueldo" maxlength="10" size="25" onChange="validanumero(this.value);"></td>
          </tr>
          <tr>
            <td id="texto_tablas2">Tipo de Bono</td>
            <td align="left">
              <select name="selbono"  class="select-normal" onchange="abrirajax('prg_funcionesajax.asp', 1, this.value, 'dato1');">
              <option value="0" selected>Selecciona</option>
              <%
              sql="select id_tipobono, descripcion from tc_tipobono order by descripcion;"
              set rs=Conn.execute(sql)
              
              while not rs.eof
              %>
                <option value="<%=rs("id_tipobono")%>"><%=rs("descripcion")%></option>
              <%
                rs.movenext
              wend
              %>
              </select>
            </td>
          </tr>
          <tr id="dato1">
            <td id="texto_tablas2" colspan="2">
            </td>
          </tr>
          <tr>
            <td id="texto_tablas2">Estado</td>
            <td align="left"><select name="estado" onchange="abrirajax('prg_funcionesajax.asp', 2, this.value, 'dato2');">
              <option value="0" selected>Selecciona</option>
              <%
              sql="select id_estado, nombre from tc_estado order by id_estado;"
              set rs=Conn.execute(sql)
              
              while not rs.eof
              %>
                <option value="<%=rs("id_estado")%>"><%=rs("nombre")%></option>
              <%
                rs.movenext
              wend
              %>
              </select>
            </td>
          </tr>
          <tr id="dato2">
            <td id="texto_tablas2" colspan="2"></td>        
          </tr>
          <tr id="dato3">
            <td id="texto_tablas2" colspan="2"></td>        
          </tr>
          <tr>
            <td id="texto_tablas2">Calle</td>
            <td align="left"><input type="text" name="calle" maxlength="50" size="25"></td>
          </tr>
          <tr>
            <td id="texto_tablas2">Tel&eacute;fono</td>
            <td align="left"><input type="text" name="tel" maxlength="10" size="25"></td>
          </tr>
          <tr>
            <td id="texto_tablas2">Tel&eacute;fono Celular</td>
            <td align="left"><input type="text" name="cel" maxlength="15" size="25"></td>
          </tr>
          <tr>
            <td id="texto_tablas2">Usuario</td>
            <td align="left"><input type="text" name="usuario" maxlength="11" size="25" onChange="abrirajax('prg_funcionesajax.asp', 4, this.value, 'dato4');"></td>
          </tr>
          <tr>
            <td id="texto_tablas2" colspan="2"><div id="dato4"></div></td>        
          </tr>
          <tr>
            <td id="texto_tablas2">Correo</td>
            <td align="left"><input type="text" name="correo" maxlength="50" size="25"></td>
          </tr>
          <tr>
            <td id="texto_tablas2">Numero de Empleado</td>
            <td align="left"><input type="text" name="noemp" maxlength="11" size="25" onChange="abrirajax('prg_funcionesajax.asp', 5, this.value, 'dato5');"></td>
          </tr>
          <tr>
            <td id="texto_tablas2" colspan="2"><div id="dato5"></div></td>        
          </tr>
          <tr>
            <td id="texto_tablas2">Banco</td>
            <td align="left"><select name="selbanco">
              <option value="0" selected class="select-normal">Selecciona</option>
              <%
              sql="select id_banco, banco from tc_banco order by banco;"
              set rs=Conn.execute(sql)
              
              while not rs.eof
              %>
                <option value="<%=rs("id_banco")%>"><%=rs("banco")%></option>
              <%
                rs.movenext
              wend
              %>
              </select>
            </td>
          </tr>
          <tr>
            <td id="texto_tablas2">Tipo de Cuenta</td>
            <td align="left">
              <select name="seltipcta" class="select-normal">
              <option value="0" selected>Selecciona</option>
              <%
              sql="select id_tipocuenta, descripcion from tc_tipocuenta order by descripcion;"
              set rs=Conn.execute(sql)
              
              while not rs.eof
              %>
                <option value="<%=rs("id_tipocuenta")%>"><%=rs("descripcion")%></option>
              <%
                rs.movenext
              wend
              %>
              </select>
            </td>
          </tr>
          <tr>
            <td id="texto_tablas2">Cuenta de Deposito</td>
            <td align="left"><input type="text" name="cuentadep" maxlength="20" size="25"></td>
          </tr>
          <tr style="">
          <td colspan="2">
            <center>
              <table style="width: 80%">
                <tr>
                  <td id="texto_tablas2">INE</td>
                  <td align="left">
                    <input type="checkbox" name="cbxine">
                  </td>
                  <td id="texto_tablas2">Comprobante domicilio</td>
                  <td align="left">
                    <input type="checkbox" name="cbxdomicilio">
                  </td>
                  <td id="texto_tablas2">Pagare</td>
                  <td align="left">
                    <input type="checkbox" name="cbxpagare">
                  </td>
                  <td id="texto_tablas2">Contrato</td>
                  <td align="left">
                    <input type="checkbox" name="cbxcontrato">
                  </td>
                </tr> 
              </table>
            </center>
          </td>
        </tr>
        </table>
        <br><br>
        <input type="button" value="Guardar" onClick="return validar(forma1)" class="button">
        <input type="button" value="Cancelar" onClick="javascript: history.go(-1)" class="button">
        <br><br>
        <%
        rs.close
        close_conn(Conn)
        %>
      </div>
    </form>
    </div>
    </div>
  </div>
</body>
</html>