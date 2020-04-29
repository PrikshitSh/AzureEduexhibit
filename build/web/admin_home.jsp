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
            <th>Project Name</th>
            <th>Description</th>
            <th>Area</th>
            <th>Image</th>
            <th>Dated</th>
           
             <th>Userid</th>
             <th>View Comment</th>
           
            <th>Delete Project</th>
        </thead>
        <%
        String sql="select * from tblprojects";
        Connection conn=connection.connect.openConnection();
PreparedStatement stat=conn.prepareStatement(sql);

ResultSet rs=stat.executeQuery();
while(rs.next()){
//    id	project_name	description	area	image	rdate	userid
%>
<tr>
    <td><%=rs.getString("id")%></td>
    <td><%=rs.getString("project_name")%></td>
    <td><%=rs.getString("description")%></td>
    <td><%=rs.getString("area")%></td>
    <td><%=rs.getString("image")%></td>
    <td><%=rs.getString("rdate")%></td>
    <td><%=rs.getString("userid")%></td>
    <td><a href="view_comments_admin.jsp?cid=<%=rs.getString("id")%>" class="btn-primary">View Comments</a></td>
     <td><a href="delete_project.jsp?id=<%=rs.getString("id")%>" class="btn-danger">Delete Project</a></td>
   
    
</tr>

        <%
}


        %>
        <tfoot>
            <th>ID</th>
            <th>Project Name</th>
            <th>Description</th>
            <th>Area</th>
            <th>Image</th>
            <th>Dated</th>
           
             <th>Userid</th>
             <th>View Comment</th>
           
            <th>Delete Project</th>
        </tfoot>
    </table>
</div>
<%@include file="footer.jsp" %>