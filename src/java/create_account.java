/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import database.MyDB;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author clt
 */
@WebServlet(urlPatterns = {"/create_account"})
public class create_account extends HttpServlet {

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

            try {

                MyDB db = new MyDB();
                Connection con = db.getCon();
                ResultSet RS = null;
                Statement stmt = con.createStatement();

                String full_name = request.getParameter("full_name");
                String email = request.getParameter("email");
                String password = request.getParameter("password");
                String confirm_password = request.getParameter("confirm_password");

                RS = stmt.executeQuery("select * from Customer where email = '" + email + "' or password = '" + password + "';");

                String email_database = "";
                String password_database = "";

                while (RS.next()) {
                    email_database = RS.getString("email");
                    password_database = RS.getString("password");
                }

                if (email_database.equals("") && password_database.equals("") && password.equals(confirm_password)) {
                    String line = "";
                    int rows = 0;

                    line = "Insert Into Customer(full_name, email, password) values('"
                            + full_name + "','"
                            + email + "','"
                            + password + "');";

                    rows = stmt.executeUpdate(line);

                    response.sendRedirect("login.jsp");
                } else if (email_database.equals(email)) {
                    request.setAttribute("create_email", "invalid_email");
                    RequestDispatcher rd = request.getRequestDispatcher("signup.jsp");
                    rd.forward(request, response);
                } else if (password_database.equals(password)) {
                    request.setAttribute("create_email", "repeated_password");
                    RequestDispatcher rd = request.getRequestDispatcher("signup.jsp");
                    rd.forward(request, response);
                } else if (!password.equals(confirm_password)) {
                    request.setAttribute("create_email", "invalid_password");
                    RequestDispatcher rd = request.getRequestDispatcher("signup.jsp");
                    rd.forward(request, response);
                }

                stmt.close();
                con.close();

            } catch (Exception cnfe) {
                System.err.println("Exception: " + cnfe);
            }

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
