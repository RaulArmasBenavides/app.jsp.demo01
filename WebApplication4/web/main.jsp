<%-- 
    Document   : index
    Created on : 12-may-2016, 19:42:09
    Author     : Alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<script src="jquery/jquery-3.2.1.min.js" type="text/javascript"></script>

<script type="text/javascript">
    $(document).ready(function() {
        $("#Mostrar").click(function() {
            $ciudad = document.getElementById(nombre).value();
            $.post("Descripcion",{nombre: $ciudad},function(data) {
                $("#resultado").html(data);
            });
        });
    });
</script>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>prueba jquery</title>
    </head>
    <body style="background: cyan">
        <form action="Descripcion" method="POST">
            Ingrese Ciudad <input type="text" name="nombre" value="" id="nombre"/>
            <input type="submit" value="Mostrar" id="Mostrar"/>
        </form>
        <div id="resultado"></div>
        <p>Respuesta : ${requestScope.msg}</p>
    </body>
</html>
