<%-- 
    Document   : calculadora
    Created on : 19 dic 2024, 1:50:47 a.m.
    Author     : RAUL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%-- 
    Document   : index
    Created on : 15/07/2018, 01:09:23 PM
    Author     : Alumno
--%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP-SERVLET</title>
    </head>
    <body>
        <form action="Matematica" method="POST">
            <table border="1">
                <thead>
                    <tr>
                        <th colspan="2">Mini Calculadora</th>                       
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Numero 1</td>
                        <td><input type="text" name="num1" value="${requestScope.n1}" />   </td>                         
                    </tr>
                    <tr>
                        <td>Numero 2</td>
                        <td><input type="text" name="num2" value="${requestScope.n2}" /></td>
                    </tr>
                    <tr>
                        <td>Operador</td>
                        <td><select name="ddloperador">
                                <option value="+">Sumar</option>
                                <option value="-">Restar</option>
                                <option value="x">Multiplicar</option>
                                <option value="/">Dividir</option>
                            </select></td>
                    </tr>
                    <tr>
                        <td>Resultado</td>
                        <td><input type="text" name="resultado" value="${requestScope.resultado}" /></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Procesar" /></td>
                        <td><input type="reset" value="Limpiar" /></td>
                    </tr>
                </tbody>
            </table>

        </form>  
    </body>
</html>
