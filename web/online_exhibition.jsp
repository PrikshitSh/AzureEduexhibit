<%@page import="java.sql.ResultSet"%>
<%@page import="com.mysql.jdbc.ResultSetImpl"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@include file="header_menu.jsp" %>
  <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
  <style>
      .column {
  float: left;
  width: 50%;
  
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}
  </style>
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
        if(session.getAttribute("userid")!=null){
        
       
    String sql_views="insert into tblviews (userid,rdate) values(?,?)";
    Connection conn=connection.connect.openConnection();
    PreparedStatement stat=conn.prepareStatement(sql_views);
    stat.setString(1, (String)session.getAttribute("userid"));
    stat.setString(2, connection.connect.getDate());
    stat.executeUpdate();
    
    %>
    <div class="row">
        <div class="column">
    <table class="table">
        <tr>
            <td>
                 <iframe width="420" height="315"
src="https://www.youtube.com/embed/tgbNymZ7vqY">
</iframe>
            </td>
        </tr>
    </table>             
        </div>
        <div class="column" style="overflow: auto;height:400px" id="result">here</div>
    
   
    </div>
    
    
  
    <form action="save_ecomment.jsp" id="makeComment">
        <input type="text" name="txtComment" id="txtComment" placeholder="Comment here...">
  <input type="submit" value="Comment" id="btnComment">
</form>
       <script>
       $( "#makeComment" ).submit(function( event ) {
 
  // Stop form from submitting normally
  event.preventDefault();
 
  // Get some values from elements on the page:
  var $form = $( this ),
    term = $form.find( "input[name='txtComment']" ).val(),
    url = $form.attr( "action" );
 console.log(term)
  // Send the data using post
  var posting = $.post( url, { txtComment: term },"json");
 
  // Put the results in a div
  posting.done(function(data) {
    var content = $(JSON.parse(data));
    console.log(content[0])
//    $( "#result" ).append( content.content );
    $("#result").empty().append(content[0].name);
//    var objDiv = document.getElementById("#result");
$("#result").scrollTop($("#result")[0].scrollHeight);
  });
});
        </script>
</div>
    <%
     }else{
out.print("Kindly login to continue");
}
    %>
<%@include file="footer.jsp" %>