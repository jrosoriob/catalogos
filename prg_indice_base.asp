<%
usuario = session("sesusu")
%>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<script src="SpryAssets/SpryMenuBar.js" type="text/javascript"></script>
<link href="SpryAssets/SpryMenuBarHorizontal.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="estilos.css" />
    <script type="text/javascript">
        var GB_ROOT_DIR = "./greybox/";
    </script>

    <script type="text/javascript" src="greybox/AJS.js"></script>
    <script type="text/javascript" src="greybox/gb_scripts.js"></script>
    <link href="greybox/gb_styles.css" rel="stylesheet" type="text/css" media="all" />

    <script type="text/javascript" src="static_files/help.js"></script>
    <link href="static_files/help.css" rel="stylesheet" type="text/css" media="all" />
<table align="center">
<tr><td>
<div>
<p align="center">
<ul id="MenuBar1" class="MenuBarHorizontal">

<%if  session("sessuc") = 9000 or session("sessuc") = 8100 then%>
  <li><a class="MenuBarItemSubmenu" href="#">Empleados</a>
    <ul>
      <li><a href="prg_alta_emp1.asp">Altas</a>
	  <li><a href="prg_baja_emp1.asp">Bajas</a>
	  <li><a href="prg_cambio_emp1.asp">Cambios</a>
      </li>
    </ul>  
  </li>
<% end if %> 
 
 <li><a class="MenuBarItemSubmenu" href="#" >Herramientas<br />&nbsp;</a>
    <ul>
      <li><a href="../cierre/prg_cambiopwd1.asp?usuario=<%=usuario%>" title="Cambio de Contraseña" rel="gb_page_center[320, 240]">Cambio de Password</a></li>
    </ul>
  </li>
 
  <li><a class="MenuBarItemSubmenu" href="#">Salir<br />&nbsp;</a>
    <ul>
      <li><a href="entrada.asp">Salir</a></li>
    </ul>
  </li>
</ul>
<script type="text/javascript">
<!--
var MenuBar1 = new Spry.Widget.MenuBar("MenuBar1", {imgDown:"SpryAssets/SpryMenuBarDownHover.gif", imgRight:"SpryAssets/SpryMenuBarRightHover.gif"});
//-->
</script>

</p>
</div></td></tr></table>
