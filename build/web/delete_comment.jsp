<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%
String id=request.getParameter("id");
String utype = (String) session.getAttribute("utype");



String userid=(String)session.getAttribute("userid");
 
int i=0;

if(userid!=null){
   if(utype.equalsIgnoreCase("admin")){
   Connection conn=connection.connect.openConnection();
 String sql="delete from tblcomment where id=?";
 System.out.println("sql"+sql);
PreparedStatement stat=conn.prepareStatement(sql);
stat.setString(1, id);

i=stat.executeUpdate();
   }
 
}
if(i>0){
session.setAttribute("msgDP", "Comment deleted successfully");
}else{
session.setAttribute("msgDP", "Failed to delete Comment");
}

response.sendRedirect("view_comments_admin.jsp?id="+id+"");


%>