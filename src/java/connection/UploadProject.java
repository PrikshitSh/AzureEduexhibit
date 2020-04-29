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
public class UploadProject extends HttpServlet {

    PreparedStatement pst = null;
    Connection con = null;
    ResultSet rst = null;
    String txtName, txtArea, txtDescription;
    String txtFile;
    File file3;
    int i = 0;
    HttpSession session = null;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
session=request.getSession();
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
                        if (item.getFieldName().equalsIgnoreCase("txtName")) {
                            txtName = item.getString();
                            //System.out.println("product Id : " + productId);
                        }

                        if (item.getFieldName().equalsIgnoreCase("txtArea")) {
                            txtArea = item.getString();
                            //System.out.println("product Name : " + productName);
                        }
                        if (item.getFieldName().equalsIgnoreCase("txtDescription")) {
                            txtDescription = item.getString();
                            //System.out.println("product Name : " + productName);
                        }

                        /* if (item.getFieldName().equalsIgnoreCase("hidcount")) {
                        count = item.getString();
                        System.out.println("Row count : " + count);
                        }*/
                    } else {
                        String fullfilename = "img_360" + "_" + timestamp;
                        //System.out.println("fullfilename : " + fullfilename);
                        if (item.getFieldName().equalsIgnoreCase("txtImage")) {
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
                String query = "INSERT INTO `tblprojects` (`id`, `project_name`, `description`, `area`, `image`, `rdate`, `userid`) VALUES (NULL, ?, ?, ?, ?, ?, ?);";
                PreparedStatement pst = con.prepareStatement(query);
                pst.setString(1, txtName);
                pst.setString(2, txtDescription);
                pst.setString(3, txtArea);
                pst.setString(4, file3.getName());
                pst.setString(5, connect.getDate());
                pst.setString(6, session.getAttribute("userid").toString());
                i = pst.executeUpdate();
            } catch (Exception e) {
                e.printStackTrace();
            }
            if (i > 0) {
                msg = "Project uploaded Successfull";
                session = request.getSession(true);
                session.setAttribute("MSGnew_projects", msg);
                response.sendRedirect("index.jsp#new_projects");
            } else {
                msg = "Failed to upload project !";
                session = request.getSession(true);
                session.setAttribute("MSGnew_projects", msg);
                response.sendRedirect("index.jsp#new_projects");
            }
        }
        if (status == false) {
            msg = "Image not uploaded !!";
            session = request.getSession(true);
            session.setAttribute("MSG", msg);
            response.sendRedirect("index.jsp#signup");
        }
    }

}
