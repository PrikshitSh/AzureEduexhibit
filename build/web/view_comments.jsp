<%@page import="java.sql.ResultSet"%>
<%@page import="com.mysql.jdbc.ResultSetImpl"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@include file="header_menu.jsp" %>
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
    <table class="table">
        <tr>
            <th>Name</th>
            <th>Comment</th>
            <th>Rating</th>
            <th>Dated</th>
        </tr>
        <%
        String sql="select * from tblcomment where cid=?";
        Connection conn=connection.connect.openConnection();
PreparedStatement stat=conn.prepareStatement(sql);
stat.setString(1, request.getParameter("cid"));
ResultSet rs=stat.executeQuery();
while(rs.next()){
%>
<tr>
    <td><%=rs.getString("userid")%></td>
    <td><%=rs.getString("comment")%></td>
    <td><%=rs.getString("rating")%></td>
    <td><%=rs.getString("rdate")%></td>
    
</tr>

        <%
}


        %>
        <tr>
            
        </tr>
    </table>
</div>
<%@include file="footer.jsp" %>