/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Candey.cliente;
import Candey.clienteDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Jaime Coronado
 */
public class controlador extends HttpServlet {

    cliente cl = new cliente();
       clienteDAO cd = new clienteDAO();
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
       HttpSession sesion = request.getSession();
        String accion = request.getParameter("accion");
        String menu = request.getParameter("menu");
        
        
        if(menu.equals("index")){
                request.getRequestDispatcher("index.jsp").forward(request, response);
                
        }
        
        if(menu.equals("login")){
                request.getRequestDispatcher("login.jsp").forward(request, response);
                
        }
        
        if(menu.equals("registro")){
             request.getRequestDispatcher("registro.jsp").forward(request, response);
            
            }  
        if(menu.equals("borrar")){
             request.getRequestDispatcher("delete.jsp").forward(request, response);
            
            }
        }
    
    
    

    
    

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
