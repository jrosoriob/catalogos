<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Entrada</title>
<link href="css/styles_v2.css" rel="stylesheet" type="text/css">
<link href="css/forms.css" rel="stylesheet" type="text/css">
<script src="js/jquery.js" type="text/javascript"><!--mce:0--><!--mce:0--></script>
<script src="js/jquery.validate.js" type="text/javascript"><!--mce:1--><!--mce:1--></script>
</head>

<body>
  <br />
  <div id="wrap">
    <div id="header">
       <div id="content">
          <div id="content_">
             <form action="prg_valida.asp" method="POST" class="dark-matter-login">
             <h1>
                <img src="images/gt9039p/32x32/group_key.png" border="0"> Inicio de Sesión
             </h1>
             <label>
                <span class="text-left">Usuario</span>
                <input type="text" name="user" id="user" size="15" maxlength="15" placeholder="Usuario">
             </label>
          
             <label>
                <span class="text-left">Password</span>
                <input type="password" name="clave" id="clave" size="15" maxlength="15" placeholder="Contraseña">
             </label>
          
             <br />
             <button type="submit" name="btnValidar" id="btnValidar" class="button"> Ingresar </button>
            </form>
        </div>
      </div>
    </div>
  </div>
</body>
</html>