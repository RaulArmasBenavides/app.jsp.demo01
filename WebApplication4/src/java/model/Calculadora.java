/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author RAUL
 */
public class Calculadora {
    //metodos
    public double Operacion(double x, double y, char operador) {
        double res = 0;
        switch (operador) {
            case '+':
                res = x + y;
                break;
            case '-':
                res = x - y;
                break;
            case 'x':
                res = x * y;
                break;
            case '/':
                res = x / y;
                break;
        }
        return res;
    }

}
