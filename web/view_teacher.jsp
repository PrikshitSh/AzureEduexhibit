<%@page import="java.sql.ResultSet"%>
<%@page import="com.mysql.jdbc.ResultSetImpl"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@include file="header_menu_admin.jsp" %>
<!-- Header area -->
<div class="container">
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
     <%
              String  msg = (String) session.getAttribute("msgDP");
            %>
             <%
                        if (msg != null) {
                    %>
                    <table>
                    <tr>
                        <td></td>
                        <td style="font-family: verdana;color: red;font-size: 10px" align="center" colspan="4"><%=msg%></td>
                    </tr>     
                    </table>
                   
                    <%
                            session.removeAttribute("msgDP");
                        }
                    %>
    <table class="table table-striped table-hover">
        <thead>
            <th>ID</th>
            <th>Name</th>
            <th>Image</th>
            <th>Email</th>
            <th>Phone</th>
            <th>College</th>
            <th>Address</th>
           
             <th>Department</th>
             <th>Dated</th>
           
            <!--<th>Delete Project</th>-->
        </thead>
        <%
//            	id	name	email	phone	college	address	department	password	rdate	image
        String sql="select * from tblteachers";
        Connection conn=connection.connect.openConnection();
PreparedStatement stat=conn.prepareStatement(sql);

ResultSet rs=stat.executeQuery();
while(rs.next()){
//    id	project_name	description	area	image	rdate	userid
%>
<tr>
    <td><%=rs.getString("id")%></td>
    <td><img src="UploadedImage/<%=rs.getString("image")%>" height="200" width="200"></td>
    <td><%=rs.getString("name")%></td>
    <td><%=rs.getString("email")%></td>
    <td><%=rs.getString("phone")%></td>
    <td><%=rs.getString("college")%></td>
    <td><%=rs.getString("address")%></td>
    <td><%=rs.getString("department")%></td>
    <td><%=rs.getString("rdate")%></td>
  
    
</tr>

        <%
}


        %>
        <tfoot>
            <th>ID</th>
            <th>Name</th>
            <th>Image</th>
            <th>Email</th>
            <th>Phone</th>
            <th>College</th>
            <th>Address</th>
           
             <th>Department</th>
             <th>Dated</th>
        </tfoot>
    </table>
</div>
<%@include file="footer.jsp" %>