/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controller;

/**
 *
 * @author RAUL
 */
import java.io.IOException;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Calculadora;
 

/**
 *
 * @author Alumno
 */
@WebServlet(name = "CalculadoraServlet", urlPatterns = {"/Matematica"})
public class CalculadoraServlet extends HttpServlet {

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Variable que guarda el alias del servlet (Matematica)
        String path = request.getServletPath();
        if ("/Matematica".equals(path)) {
            procesar(request, response);
        }
    }

    private void procesar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            // Variables
            double n1 = Double.parseDouble(request.getParameter("num1"));
            double n2 = Double.parseDouble(request.getParameter("num2"));
            char op = request.getParameter("ddloperador").charAt(0);

            // Crear objeto de la clase Calculadora
            Calculadora cal = new Calculadora();

            // Procesar
            double resultado = cal.Operacion(n1, n2, op);

            // Devolver resultado
            request.setAttribute("n1", n1);
            request.setAttribute("n2", n2);
            request.setAttribute("resultado", resultado);

            RequestDispatcher rd = request.getRequestDispatcher("calculadora.jsp");
            rd.forward(request, response);

        } catch (NumberFormatException e) {
            response.getWriter().println("Error: Los parámetros deben ser numéricos.");
        }
    }
}