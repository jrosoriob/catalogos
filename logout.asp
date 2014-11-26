<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<%Response.Expires=-1%>
<!doctype html>
<html>
<head>
  <meta charset="utf-8">
  <title>Documento sin título</title>
  <script type="text/javascript" language="javascript">
    function DisableBackButton() {
      window.history.forward()
    }
    DisableBackButton();
    window.onload = DisableBackButton;
    window.onpageshow = function(evt) { if (evt.persisted) DisableBackButton() }
    window.onunload = function() { void (0) }
  </script>
  <%
    Response.Expires=-1
    Response.Buffer = True
    Response.CacheControl = "no-cache"
    Response.AddHeader "Pragma", "no-cache"
    Response.Expires = -1
  %>
  <%
    If Not Session("login") = 1 Then 
      Response.Redirect("entrada.asp")
    End If
  %>
  </head>
  <body>
  <div id="wrap">
    <div id="header">
    </div>
    <div id="content">
        <div id="content_">
      <%
        Session.Abandon()
        Session("login") = 0
        Response.Redirect("entrada.asp")
      %>
        </div>
    </div>
  </div>
  <div id="footer">
    &copy; <%=Year(Now())%> Grupo Porvenir
  </div>
  </body>
</html>
