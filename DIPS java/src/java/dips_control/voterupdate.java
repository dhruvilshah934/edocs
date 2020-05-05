/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dips_control;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author DHRUVIL
 */
public class voterupdate extends HttpServlet {

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
        try{
                HttpSession session=request.getSession();
                Long name = (Long) session.getAttribute("user");
                out.println("AADHAR, " + name + "<br>");
                
                Class.forName("com.mysql.jdbc.Driver");
                String vid=request.getParameter("voter_num");
                out.println("Voter, " + vid + "<br>");
                
                Connection Conn_voter=DriverManager.getConnection("jdbc:mysql://localhost:3306/aadhar","root","");
                Statement st=Conn_voter.createStatement();
                String query="select * from aadhar where u_id='"+name+"'";
                ResultSet rs=null;   
                rs=st.executeQuery(query);
                
                while(rs.next()){ 
                Long aadhar_voter=rs.getLong(1);
                out.println(aadhar_voter);
                
                if(aadhar_voter.equals(name))
                {
                    Connection Conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/dips","root","");    
//                    PreparedStatement pstt=Conn.prepareStatement("update user set pan_num=? where aadhar_num="+name);    
//                    pstt.setString(6,pid); 
//                    pstt.executeUpdate();
//                    pstt.close();
                    Statement stt=Conn.createStatement();
                    query="Update user set voter_num='"+vid+"' where aadhar_num='"+aadhar_voter+"'";
                    stt.executeUpdate(query);
                    stt.close();
                    Conn.close();
                    response.sendRedirect("profile.jsp");
                }
                } 
                
        
        }catch(Exception e){out.println("Error"+e);}
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
