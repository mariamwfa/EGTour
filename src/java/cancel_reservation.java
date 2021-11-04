/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import database.MyDB;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.time.temporal.ChronoUnit;
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
 * @author Mohamed
 */
@WebServlet(urlPatterns = {"/cancel_reservation"})
public class cancel_reservation extends HttpServlet {

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
            MyDB db = new MyDB();
            Connection con = db.getCon();
            ResultSet RS = null;
            Statement stmt = con.createStatement();
            
            HttpSession session = request.getSession(true);
            
            String reservation_id = request.getParameter("id");
            int Reservation_ID = Integer.parseInt(reservation_id);
            
            RS = stmt.executeQuery("select * from reservation where email = '" + session.getAttribute("customer_email") + "';");
            
            String trip_name_database = "";
            
            while (RS.next()) {
                trip_name_database = RS.getString("trip_name");
            }
            
            RS = stmt.executeQuery("select * from trips where trip_name = '" + trip_name_database + "';");
            
            int num_of_participants = 0;
            
            while (RS.next()) {
                num_of_participants = RS.getInt("number_of_participants");
            }
            
            String line = "Delete from reservation where reservation_id = " + Reservation_ID + ";";
            int rows = stmt.executeUpdate(line);
            
            num_of_participants -= 1;
            
            line = "UPDATE trips SET number_of_participants = " + num_of_participants + " WHERE trip_name = '" + trip_name_database + "';";
            rows = stmt.executeUpdate(line);
            
            line = "UPDATE trips SET status = 'available' WHERE trip_name = '" + trip_name_database + "';";
            rows = stmt.executeUpdate(line);
            
            response.sendRedirect("user_reservations.jsp");
        } catch (Exception cnfe) {
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
