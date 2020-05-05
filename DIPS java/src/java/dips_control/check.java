package dips_control;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpSession;

/**
 *
 * @author DHRUVIL
 */
public class check extends HttpServlet {

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
            Connection Con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dips", "root", "");
            Long Adhar = Long.parseLong(request.getParameter("aadhar_num"));
            String pwd = request.getParameter("pwd");
            Statement st = Con.createStatement();
            ResultSet rs = st.executeQuery("select * from user where aadhar_num='" + Adhar + "' and pwd='" + pwd + "'");

            if (rs.next() == false) {
                out.println("<script>alert('Invalid Username or Password');window.location.href='signin.jsp';</script>");
                //out.println("Invalid username or Password"); 
                //response.sendRedirect("index.jsp");
            } else {
                out.println("Looged-In Successfully");
                do {
                    String name = rs.getString(1);

                    out.print("Welcome, " + name);
                    HttpSession session = request.getSession(true); // reuse existing
                    // session if exist
                    // or create one
                    session.setAttribute("user", Adhar);
                    session.setMaxInactiveInterval(30); // 30 seconds
                    response.sendRedirect("profile.jsp");

                        //request.getRequestDispatcher("profile.jsp").include(request, response);
                } while (rs.next());
            }
        } catch (Exception e) {
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
