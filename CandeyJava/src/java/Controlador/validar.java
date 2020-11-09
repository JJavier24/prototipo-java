
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
public class validar extends HttpServlet {

    clienteDAO cd = new clienteDAO();
    cliente c = new cliente(); 
    
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet validar</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet validar at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        HttpSession sesion = request.getSession();
          String accion = request.getParameter("accion");
          
        if(accion.equalsIgnoreCase("ingresar")){
            String user = request.getParameter("email");
            String pas = request.getParameter("pass");
            c = cd.validar(user, pas);
            if(c.getEmail() != null){
                request.getRequestDispatcher("controlador?menu=index").forward(request, response);
            }else{
                 
                 sesion.setAttribute("mensaje", "datos incorrectos, intente de nuevo");
               request.getRequestDispatcher("login.jsp").forward(request, response);  
            }
        
        }
        
    }
    
    
    }
        
    
