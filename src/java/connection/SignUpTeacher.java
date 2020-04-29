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
import javax.servlet.ServletConfig;
import javax.servlet.annotation.WebServlet;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.fileupload.servlet.ServletRequestContext;

/**
 *
 * @author softavate
 */
@WebServlet(name = "SignUpTeacher", urlPatterns = {"SignUpTeacher"})
public class SignUpTeacher extends HttpServlet {

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
        PrintWriter out = response.getWriter();
        
        int i = 0;
        response.setContentType("text/html");
        ServletConfig config = getServletConfig();
        String context = config.getServletContext().getRealPath("/");
        String filePath = context + "UploadedImage";
        boolean status = false;
       
               
        java.util.Date d = new java.util.Date();
        long timestamp = d.getTime();
        try {
            File projectDir = new File("filePath");
            if (!projectDir.exists()) {
                projectDir.mkdirs();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        boolean isMultipart = ServletFileUpload.isMultipartContent(new ServletRequestContext(request));
        if (isMultipart) {
            FileItemFactory factory = new DiskFileItemFactory();
            ServletFileUpload upload = new ServletFileUpload(factory);
            try {
                List/*FileItem*/ items = upload.parseRequest(request);
                Iterator iter = items.iterator();
                while (iter.hasNext()) {
                    FileItem item = (FileItem) iter.next();
                    if (item.isFormField()) {
                        if (item.getFieldName().equalsIgnoreCase("txtname")) {
                            txtname = item.getString();
                            //System.out.println("product Id : " + productId);
                        }
                        
                        if (item.getFieldName().equalsIgnoreCase("txtEmail")) {
                            txtEmail = item.getString();
                            //System.out.println("product Name : " + productName);
                        }
                        if (item.getFieldName().equalsIgnoreCase("txtPhone")) {
                            txtPhone = item.getString();
                            //System.out.println("product Name : " + productName);
                        }
                        if (item.getFieldName().equalsIgnoreCase("txtAddress")) {
                            txtAddress = item.getString();
                            //System.out.println("product Name : " + productName);
                        }
                      

                        if (item.getFieldName().equalsIgnoreCase("txtCollege")) {
                            txtCollege = item.getString();
                            //System.out.println("pPrice : " + pPrice);
                        }

                        if (item.getFieldName().equalsIgnoreCase("txtDepartment")) {
                            txtDepartment = item.getString();
                            //System.out.println("p Quantity : " + pQuantity);
                        }
                       
                        if (item.getFieldName().equalsIgnoreCase("txtpwd")) {
                            txtpwd = item.getString();
                            //System.out.println("pPrice : " + pPrice);
                        }

                        
                        /* if (item.getFieldName().equalsIgnoreCase("hidcount")) {
                        count = item.getString();
                        System.out.println("Row count : " + count);
                        }*/


                    } else {
                      String  fullfilename = "img" + "_" + timestamp;
                        //System.out.println("fullfilename : " + fullfilename);
                        if (item.getFieldName().equalsIgnoreCase("txtFile")) {
                            String filename = item.getName();
                            if (!filename.equalsIgnoreCase("")) {
                                String fname = filename.substring(filename.lastIndexOf("."), filename.length());
                                String fname1 = filePath + File.separator + fullfilename + fname;
                                
                                 file3 = new File(fname1);
                                try {
                                    item.write(file3);
                                    status = true;
                                } catch (Exception e1) {
                                    e1.printStackTrace();
                                    status = false;
                                }
                            }
                        }
                        
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
                status = false;

            }
        }
        String msg = null;
        if (status == true) {
            try {
                con = connection.connect.openConnection();
               
//                    String txtname,txtEmail,txtPhone,txtCollege,txtAddress,txtDepartment,txtpwd;
//   String txtFile;
String query="INSERT INTO `tblteachers` (`id`, `name`, `email`, `phone`, `college`, `address`, `department`, `password`, `rdate`, `image`) VALUES (NULL, ?, ?, ?, ?, ?, ?, ?, ?, ?);";
                PreparedStatement pst=con.prepareStatement(query);
                pst.setString(1, txtname);
                pst.setString(2, txtEmail);
                pst.setString(3, txtPhone);
                pst.setString(4, txtCollege);
                pst.setString(5, txtAddress);
                pst.setString(6, txtDepartment);
                pst.setString(7, txtpwd);
                pst.setString(8, connect.getDate());
                pst.setString(9, file3.getName());
                i=pst.executeUpdate();
            } catch (Exception e) {
                e.printStackTrace();
            }
            if (i > 0) {
                msg = "Registration Successfull";
                session = request.getSession(true);
                session.setAttribute("msgSignupT", msg);
                response.sendRedirect("index.jsp#signup_teacher");
            } else {
                msg = "Registration failed !";
                session = request.getSession(true);
                session.setAttribute("msgSignupT", msg);
                response.sendRedirect("index.jsp#signup_teacher");
            }
        }
        if (status == false) {
            msg = "Image not uploaded !!";
            session = request.getSession(true);
            session.setAttribute("msgSignupT", msg);
            response.sendRedirect("index.jsp#signup_teacher");
        }
    }
       


    }

