<%-- 
    Document   : validar
    Created on : 15/07/2018, 09:36:48 AM
    Author     : Alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            final String USUARIO = "admin";
            final String CLAVE = "123456";
            //variables
            String usu = request.getParameter("txtusuario");
            String pas = request.getParameter("txtpassword");
            //VALIDAR
            if (usu.equals(USUARIO) && pas.equals(CLAVE)) {
                response.sendRedirect("registrar.jsp");
            } else {
                response.sendRedirect("login.jsp");
            }
        %>
    </body>
</html>
