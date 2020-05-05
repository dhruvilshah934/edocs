/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dips_control;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;

/**
 *
 * @author DHRUVIL
 */
public class save extends HttpServlet {

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
        PrintWriter out = response.getWriter();

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection Cona = DriverManager.getConnection("jdbc:mysql://localhost:3306/aadhar", "root", "");
            Long Adhar = Long.parseLong(request.getParameter("Adhar"));
            String querya = "select * from aadhar where u_id=" + Adhar;
            Statement psta = Cona.createStatement();
            ResultSet rsa = psta.executeQuery(querya);
            if (rsa.next() == false) {
                out.println("<script>alert('Not a valid AADHAR holder');window.location.href='index.jsp';</script>");
            } else {
                Connection Con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dips", "root", "");
                String query = "select * from user where aadhar_num=" + Adhar;
                Statement pst = Con.createStatement();
                ResultSet rs = null;
                rs = pst.executeQuery(query);
                if (rs.next() == false) {
                    PreparedStatement psti = Con.prepareStatement("insert into user values(?,?,?,?,?,?,?)");
                    psti.setString(1, request.getParameter("Name"));
                    psti.setLong(2, Long.parseLong(request.getParameter("Contact")));
                    psti.setLong(3, Long.parseLong(request.getParameter("Adhar")));
                    psti.setString(4, request.getParameter("DOB"));
                    psti.setString(5, request.getParameter("Password"));
                    String pan, voter;
                    pan = "0";
                    voter = "0";
                    psti.setString(6, pan);
                    psti.setString(7, voter);
                    psti.executeUpdate();
                    out.println("<script>alert('Successfully Registered');window.location.href='index.jsp';</script>");
                    //response.sendRedirect("index.jsp");
                } else {
                    //out.println("Registered Already");
                    do {
                        out.println("<script>alert('Already Registered');window.location.href='signin.jsp';</script>");
                        //response.sendRedirect("signin.jsp");
//                        Long uid=rs.getLong(3);
//                        out.println(uid);

                    } while (rs.next());
                }
            }
        } catch (Exception e) {
            out.println("Error in mysql");
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
