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
@WebServlet(urlPatterns = {"/reservation"})
public class reservation extends HttpServlet {

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

                HttpSession session = request.getSession(true);

                String Email = request.getParameter("email");
                String phone_number = request.getParameter("phone");
                String Credit_Card = request.getParameter("credit");

                RS = stmt.executeQuery("select * from Customer where email = '" + (String) session.getAttribute("customer_email") + "';");

                String Email_database = "";
                String Full_name = "";
                while (RS.next()) {
                    Email_database = RS.getString("email");
                    Full_name = RS.getString("full_name");
                }

                if (Email_database.equals(Email)) {
                    RS = stmt.executeQuery("select * from trips where trip_id = " + session.getAttribute("trip_id") + ";");

                    int num_of_participants = 0;
                    int num_of_people = 0;
                    int price = 0;
                    int trip_id= 0;
                    String trip_name = "";

                    while (RS.next()) {
                        num_of_participants = RS.getInt("number_of_participants");
                        num_of_people = RS.getInt("number_of_people");
                        trip_name = RS.getString("trip_name");
                        price = RS.getInt("price");
                        trip_id = RS.getInt("trip_id");
                    }

                    if (num_of_participants < num_of_people) {
                        num_of_participants += 1;

                        String line = "Update trips Set number_of_participants = " + num_of_participants + " Where trip_id = " + session.getAttribute("trip_id") + ";";
                        int rows = stmt.executeUpdate(line);

                        line = "Insert Into reservation(customer_name,email,phone,credit_card_number,price,trip_name,trip_id) Values('"
                                + Full_name + "','"
                                + Email + "','"
                                + phone_number + "','"
                                + Credit_Card + "',"
                                + price + ",'"
                                + trip_name + "',"
                                + trip_id + ");";

                        rows = stmt.executeUpdate(line);
                    }

                    else if (num_of_participants == num_of_people) {
                        String line = "Update trips Set status ='" + "not_available" + "' Where trip_id = " + session.getAttribute("trip_id") + ";";
                        int rows = stmt.executeUpdate(line);
                    }
                    
                    response.sendRedirect("user_reservations.jsp");
                    
                } else {
                    request.setAttribute("reserve", "failed");
                RequestDispatcher rd = request.getRequestDispatcher("reservation_form.jsp");
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
