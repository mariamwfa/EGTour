/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import database.MyDB;
import java.sql.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Mohamed
 */
@WebServlet(urlPatterns = {"/validate"})
public class validate extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            String CustomerEmail = request.getParameter("email");            
            String CustomerPassword = request.getParameter("password");
            
            MyDB db = new MyDB();
            Connection con =db.getCon();
            ResultSet RS = null;
            Statement stmt = con.createStatement();
            
            RS = stmt.executeQuery("select * from Customer where email = '"+CustomerEmail+"' and password = '"+CustomerPassword+"';");
            
            String email_database = "";
            String password_database = "";
            while(RS.next()){
                email_database = RS.getString("email");
                password_database = RS.getString("password");
            }
            
            HttpSession session = request.getSession(true);
            session.setAttribute("customer_email", email_database);
            
            int flag = 0;
            for (int i=0; i<password_database.length(); i++)
            {
                if (password_database.charAt(i) != CustomerPassword.charAt(i))
                {
                    flag = 1;
                    break;
                }
            }
            
            if(email_database!="" && password_database!="" && flag == 0){
                response.sendRedirect("index.jsp"); 
            }
            else{
                response.sendRedirect("login.jsp"); 
            }
        }
        catch (Exception cnfe) {
                System.err.println("Exception: " + cnfe);
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
