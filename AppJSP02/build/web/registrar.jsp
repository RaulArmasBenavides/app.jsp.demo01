<%-- 
    Document   : registrar
    Created on : 15/07/2018, 09:36:22 AM
    Author     : Alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registrar Notas</title>
    </head>
    <body>
        <form action="boleta.jsp" method="POST">
            <table border="1">
                <thead>
                    <tr>
                        <th colspan="2">Registrar Notas</th>                        
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Codigo</td>
                        <td><input type="text" name="txtcodigo" value="" /></td>
                    </tr>
                    <tr>
                        <td>Nombre</td>
                        <td><input type="text" name="txtnombre" value="" /></td>
                    </tr>
                    <tr>
                        <td>Curso</td>
                        <td><select name="ddlcurso">
                                <option value="Java POO">Java POO</option>
                                <option value="Java CS">Java CS</option>
                                <option value="Java Web">Java Web</option>
                                <option Value="Oracle I">Oracle I</option>
                            </select></td>
                    </tr>
                    <tr>
                        <td>Ex. Parcial</td>
                        <td><input type="text" name="txtparcial" value="" /></td>
                    </tr>
                    <tr>
                        <td>Ex. Final</td>
                        <td><input type="text" name="txtfinal" value="" /></td>
                    </tr>
                    <tr>
                        <td>Practicas</td>
                        <td><input type="text" name="txtpractica" value="" /></td>
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
