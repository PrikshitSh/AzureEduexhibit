/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package connection;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.RequestDispatcher;
import java.lang.Object.*;

/**
 *
 * @author softavate
 */
public class Logout extends HttpServlet {
      String uname = null;
    String type = null;
    boolean response = true;
   
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
         HttpSession session = null;
        processRequest(request, response);

        session = request.getSession(true);
        session.setAttribute("userid", null);
        session.removeAttribute("utype");
        session.invalidate();

        RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
        rd.forward(request, response);

        Runtime r = Runtime.getRuntime();
        r.freeMemory();
        r.gc();


    } 

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    }

  
}

