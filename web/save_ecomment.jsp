<%@page import="java.sql.ResultSet"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%

    String comment = request.getParameter("txtComment");
System.out.println("co"+comment);
    String userid = (String) session.getAttribute("userid");

    int i = 0;
    Connection conn = connection.connect.openConnection();
    try {

        if (comment.length() > 0) {

            String sql = "INSERT INTO `tblecomment` (`id`, `userid`, `comment`, `rdate`) VALUES (NULL, ?, ?, ?);";
            System.out.println("sql" + sql);
            PreparedStatement stat = conn.prepareStatement(sql);
            stat.setString(1, userid);
            stat.setString(2, comment);

            stat.setString(3, connection.connect.getDate());

            i = stat.executeUpdate();
        }

    } catch (Exception e) {
        e.printStackTrace();

    }
    PreparedStatement stat = conn.prepareStatement("select * from tblecomment order by id asc");
    ResultSet rs = stat.executeQuery();
    String data = "<table class=table><thead><th>Name</th><th>Comment</th><th>Dated</th></thead>";

    while (rs.next()) {
        String sql_name = "select * from tblstudents where id=?";
        System.out.println(""+sql_name);
        PreparedStatement stat1 = conn.prepareStatement(sql_name);
        stat1.setString(1, rs.getString("userid"));
        ResultSet rs1 = stat1.executeQuery();
        if (rs1.next()) {
            System.out.println("inside");
            data =data+ "<tr><td>" + rs1.getString("name") +   "</td><td>" + rs.getString("comment")+ "</td><td>" + rs.getString("rdate") + "</td></tr>";
        }

    }
    data=data+"</table>";
    System.out.println("table"+data);
     PreparedStatement stat_views = conn.prepareStatement("select count(*) from tblviews");
    ResultSet rs_views = stat_views.executeQuery();
   if(rs_views.next()){
//   data=data+"<p>Total Views="+rs_views.getString(1)+"</p>";
   }
    
    
            
    System.out.println("here");
    JSONObject json = new JSONObject();
    json.put("name", data);
    out.print(json.toString());
%>