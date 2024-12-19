<%-- 
    Document   : login
    Created on : 15/07/2018, 09:36:01 AM
    Author     : Alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Acceso al Sistema</title>
    </head>
    <body>
        <form action="validar.jsp" method="POST">
            <table border="1">
                <thead>
                    <tr>
                        <th colspan="3">Acceso al Ssitema</th>                       
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td rowspan="3"><img src="imagen/login.png" width="80" height="80" alt="login"/>
                        </td>
                        <td>Usuario</td>
                        <td><input type="text" name="txtusuario" value="" /></td>
                    </tr>
                    <tr>                       
                        <td>Password</td>
                        <td><input type="password" name="txtpassword" value="" /></td>
                    </tr>
                    <tr>                        
                        <td><input type="submit" value="Aceptar" /></td>
                        <td><input type="reset" value="Limpiar" /></td>
                    </tr>
                </tbody>
            </table>

        </form>
    </body>
</html>
