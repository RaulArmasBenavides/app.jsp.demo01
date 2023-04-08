<%-- 
    Document   : boleta
    Created on : 15/07/2018, 09:36:34 AM
    Author     : Alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Boleta de Notas</title>
    </head>
    <%
        //variables
        String cod = request.getParameter("txtcodigo");
        String nom = request.getParameter("txtnombre");
        String cur = request.getParameter("ddlcurso");
        int par = Integer.parseInt(request.getParameter("txtparcial"));
        int fin = Integer.parseInt(request.getParameter("txtfinal"));
        int pra = Integer.parseInt(request.getParameter("txtpractica"));
        //procesar
        float prom = (par + pra + fin * 2) / 4.0f;
        String estado;
        if (prom >= 14) {
            estado = "Aprobado";
        } else if (prom >= 10 && prom < 14) {
            estado = "Sustitutorio";
        } else {
            estado = "Desaprobado";
        }
    %>
    <body>
        <h2>Boleta de Notas</h2>
        <hr>
        <%
            out.println("Codigo : "+cod+"</br>");
            out.println("Nombre : "+nom+"</br>");
            out.println("Curso : "+cur+"</br>");
            out.println("Ex. Parcial : "+par+"</br>");
            out.println("Ex. Final : "+fin+"</br>");
            out.println("Practica : "+pra+"</br>");
            out.println("Promedio : "+prom+"</br>");
            out.println("Estado : "+estado+"</br>");
         %>
         <hr>
         <a href="registrar.jsp">Nuevo alumno</a>
    </body>
</html>
