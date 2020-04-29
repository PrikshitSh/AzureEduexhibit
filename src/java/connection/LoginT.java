/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package connection;


import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.sql.PreparedStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.Iterator;
import java.util.List;

/**
 *
 * @author softavate
 */

public class LoginT extends HttpServlet {

    PreparedStatement pst = null;
    Connection con = null;
    ResultSet rst = null;
   String txtname,txtEmail,txtPhone,txtCollege,txtAddress,txtDepartment,txtpwd;
   String txtFile;
   File file3;
    int i = 0;
 HttpSession session = null;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
       
        session=request.getSession();
        int i = 0;
        response.setContentType("text/html");
        
      txtEmail=request.getParameter("txtEmail");
      txtpwd=request.getParameter("txtpwd");
                con = connection.connect.openConnection();
               try{
//                    String txtname,txtEmail,txtPhone,txtCollege,txtAddress,txtDepartment,txtpwd;
//   String txtFile;]
System.out.println("email"+txtEmail);
String query="select * from tblteachers where email=? and password=?";
                PreparedStatement pst=con.prepareStatement(query);
              
                pst.setString(1, txtEmail);
               
                pst.setString(2, txtpwd);
              
                ResultSet rs=pst.executeQuery();
                if(rs.next()){
                session.setAttribute("userid", rs.getString("id"));
                session.setAttribute("utype", "teacher");
                response.sendRedirect("index.jsp#projects");
                }else{
                 session.setAttribute("MSGLoginT", "Invalid credentials");
                
                response.sendRedirect("index.jsp#login_teacher");
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
           
    }
       


    }

