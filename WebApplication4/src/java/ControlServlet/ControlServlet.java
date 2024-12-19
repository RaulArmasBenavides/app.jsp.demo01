/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ControlServlet;
 

import java.io.IOException;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author Alumno
 */
@WebServlet(name = "ControlServlet",
        urlPatterns = {"/Descripcion"})
public class ControlServlet extends HttpServlet {

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String alias = request.getServletPath();
        if (alias.equals("/Descripcion")) {
            Mensaje(request, response);
        }
    }

    private void Mensaje(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // variable
        String ciudad = request.getParameter("nombre");
        String descripcion = "desconocida";

        switch (ciudad.toLowerCase()) {
            case "lima":
                descripcion = "Lima es conocida como ciudad de los reyes";
                break;
            case "trujillo":
                descripcion = "Conocida como ciudad de la eterna primavera";
                break;
            case "huaral":
                descripcion = "Conocida como ciudad de las naranjas";
                break;
            case "arequipa":
                descripcion = "Conocida como ciudad blanca";
                break;
        }

        request.setAttribute("msg", descripcion);
        RequestDispatcher rd = request.getRequestDispatcher("main.jsp");
        rd.forward(request, response);
    }
}
