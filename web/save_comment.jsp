<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%
String rating=request.getParameter("star");
String gameid=request.getParameter("cid");
String comment=request.getParameter("txtComment");


String userid=(String)session.getAttribute("userid");
System.out.print("rating "+rating+"gm id"+gameid);
int i=0;
try{
    Integer.parseInt(rating);
     System.out.println("com"+comment);
if(comment.length()>0){
   
 Connection conn=connection.connect.openConnection();
 String sql="INSERT INTO `tblcomment` (`id`, `userid`, `comment`, `rating`, `rdate`,`cid`) VALUES (NULL, ?, ?, ?, ?,?);";
 System.out.println("sql"+sql);
PreparedStatement stat=conn.prepareStatement(sql);
stat.setString(1, userid);
stat.setString(2, comment);
stat.setString(3, rating);
stat.setString(4, connection.connect.getDate());
stat.setString(5, gameid);
i=stat.executeUpdate();
}



}catch(Exception e){
    e.printStackTrace();
    session.setAttribute("MSGComment"+gameid, "Please select rating!!");
    response.sendRedirect("index.jsp#projects");
}

if(i>0){
 session.setAttribute("MSGComment"+gameid, "Comment published successfully!!");
   response.sendRedirect("index.jsp#projects");
}else{
 session.setAttribute("MSGComment"+gameid, "Failed to save comment\nCheck whether you have already given comment!!");
   response.sendRedirect("index.jsp#projects");
}
%>