<%@page import="java.sql.ResultSet"%>
<%@page import="com.mysql.jdbc.ResultSetImpl"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@include file="header_menu.jsp" %>
<!-- Header area -->
<script>
    $('.carousel').carousel({
  interval: 2000
})
    </script>
<section id="myprojects" class="section orange">
    <div class="container">
        <br>
        <br>
        <br>
        <br>
       
        
      
       
        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
<!--            <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
  </ol>-->
             <div class="carousel-inner">
        <!-- Four columns -->
        <%
//                            id	project_name	description	area	image	rdate	userid
            Connection conn = connection.connect.openConnection();
            PreparedStatement stat = conn.prepareStatement("select * from tblprojects");
//            stat.setString(1, (String) session.getAttribute("userid"));
            ResultSet rs = stat.executeQuery();
            while (rs.next()) {
                if(rs.isFirst()){
                %>
       
  <div class="item active">
      <img src="UploadedImage/<%=rs.getString("image")%>" style="width:100%; height: 400px;" alt="..." class="d-block w-100" >
      <h5><%=rs.getString("project_name")%></h5>
    <p><%=rs.getString("description")%></p>
  </div>            
                <%
                }else{
                %>
                   
  <div class="item">
      <img src="UploadedImage/<%=rs.getString("image")%>" height="300"  alt="..." class="d-block w-100" >
     <h5><%=rs.getString("project_name")%></h5>
    <p><%=rs.getString("description")%></p>
  </div>
                <%
                    
                }
        %>
      
    

              
        
        <%
            }
        %>
        <center>
         <a class="carousel-control-prev " href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only btn-primary">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only btn-primary">Next</span>
  </a>   
        </center>
         
             </div>
</div>
    </div>
        
</section>  
<!-- spacer section -->
<!--<section class="spacer green">
    <div class="container">
        <div class="row">
            <div class="span6 alignright flyLeft">
                <blockquote class="large">
                    There's huge space beetween creativity and imagination <cite>Mark Simmons, Nett Media</cite>
                </blockquote>
            </div>
            <div class="span6 aligncenter flyRight">
                <i class="icon-coffee icon-10x"></i>
            </div>
        </div>
    </div>
</section>-->




<%            String msg = null;
    if (session.getAttribute("userid") == null) {
%>
<!-- end spacer section -->
<section id="login" class="section">

    <div class="container">
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>	
        <h4>Login</h4>

        <div class="row">
            <%
                msg = (String) session.getAttribute("MSGLogin");
            %>
            <form method="post" action="Login" class="form">
                <table class="table" >

                    <tr>
                        <td >
                            Email ID :
                        </td>
                        <td>
                            <input type="email" name="txtEmail"  class="form-control" required=""/>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Password :
                        </td>
                        <td>
                            <input type="password" name="txtpwd"  class="form-control" required=""/>
                        </td>
                    </tr>
                    <%
                        if (msg != null) {
                    %>
                    <tr>
                        <td></td>
                        <td style="font-family: verdana;color: red;font-size: 10px" align="center" colspan="4"><%=msg%></td>
                    </tr>
                    <%
                            session.removeAttribute("MSGLogin");
                        }
                    %>
                    <tr>
                        <td></td>
                        <td  align="right"  valign="bottom">
                            <input type="submit" value="Login" class="form-control"/>
                        </td>
                    </tr>


                </table>
            </form>
        </div>
    </div>
    <!-- /.container -->
</section>
<section id="signup" class="section">
    <div class="container">
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>

        <h4>Sign up</h4>
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
                session.removeAttribute("MSG");
            }
        %>
        <div class="row">

            <form method="post" action="SignUp" class="form" enctype="multipart/form-data">
                <table class="table" >
                    <tr>
                        <td >
                            Profile Image
                        </td>
                        <td>
                            <input type="file" name="txtFile" required="" accept="images/*">
                        </td>
                    </tr>                                 
                    <tr>
                        <td >
                            Name
                        </td>
                        <td>
                            <input type="text" name="txtname"  class="form-control" required=""/>
                        </td>
                    </tr>
                    <tr>
                        <td >
                            Email ID
                        </td>
                        <td>
                            <input type="email" name="txtEmail"  class="form-control" required=""/>
                        </td>
                    </tr>
                    <tr>
                        <td >
                            Phone No.
                        </td>
                        <td>
                            <input type="tel" name="txtPhone"  class="form-control" required=""/>
                        </td>
                    </tr>
                    <tr>
                        <td >
                            College Name
                        </td>
                        <td>
                            <input type="text" name="txtCollege"  class="form-control" required=""/>
                        </td>
                    </tr>
                    <tr>
                        <td >
                            College Address
                        </td>
                        <td>
                            <input type="text" name="txtAddress"  class="form-control" required=""/>
                        </td>
                    </tr>
                    <tr>
                        <td >
                            Department
                        </td>
                        <td>
                            <select name="txtDepartment">
                                <option value="cse">
                                    CSE
                                </option>
                                <option value="ECE">
                                    ECE
                                </option>
                                <option value="Mechanical">
                                    Mechanical
                                </option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Password :
                        </td>
                        <td>
                            <input type="password" name="txtpwd"  class="form-control" required=""/>
                        </td>
                    </tr>

                    <tr>
                        <td></td>
                        <td  align="right"  valign="bottom">
                            <input type="submit" value="Sign Up" class="form-control"/>
                        </td>
                    </tr>


                </table>
            </form>
        </div>
    </div>
    <!-- /.container -->
</section>          
        <section id="login_admin" class="section">

    <div class="container">
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>	
        <h4>Admin Login</h4>

        <div class="row">
            <%
                msg = (String) session.getAttribute("MSGAdminLogin");
            %>
            <form method="post" action="LoginAdmin" class="form-control">
                <table class="table" >

                    <tr>
                        <td >
                            Email ID :
                        </td>
                        <td>
                            <input type="email" name="txtEmail"  class="form-control" required=""/>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Password :
                        </td>
                        <td>
                            <input type="password" name="txtpwd"  class="form-horizontal form-control" required=""/>
                        </td>
                    </tr>
                    <%
                        if (msg != null) {
                    %>
                    <tr>
                        <td></td>
                        <td style="font-family: verdana;color: red;font-size: 10px" align="center" colspan="4"><%=msg%></td>
                    </tr>
                    <%
                            session.removeAttribute("MSGAdminLogin");
                        }
                    %>
                    <tr>
                        <td></td>
                        <td  align="right"  valign="bottom">
                            <input type="submit" value="Login" class="form-inline"/>
                        </td>
                    </tr>


                </table>
            </form>
        </div>
    </div>
    <!-- /.container -->
</section>
<section id="login_teacher" class="section">

    <div class="container">
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>	
        <h4>Teacher Login</h4>

        <div class="row">
            <%
                msg = (String) session.getAttribute("MSGLoginT");
            %>
            <form method="post" action="LoginT" class="form">
                <table class="table" >

                    <tr>
                        <td >
                            Email ID :
                        </td>
                        <td>
                            <input type="email" name="txtEmail"  class="form-control" required=""/>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Password :
                        </td>
                        <td>
                            <input type="password" name="txtpwd"  class="form-control" required=""/>
                        </td>
                    </tr>
                    <%
                        if (msg != null) {
                    %>
                    <tr>
                        <td></td>
                        <td style="font-family: verdana;color: red;font-size: 10px" align="center" colspan="4"><%=msg%></td>
                    </tr>
                    <%
                            session.removeAttribute("MSGLoginT");
                        }
                    %>
                    <tr>
                        <td></td>
                        <td  align="right"  valign="bottom">
                            <input type="submit" value="Login" class="form-control"/>
                        </td>
                    </tr>


                </table>
            </form>
        </div>
    </div>
    <!-- /.container -->
</section>
<section id="signup_teacher" class="section">
    <div class="container">
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>

        <h4>Teacher Sign up</h4>
        <%
            String msgSignupT = (String) session.getAttribute("msgSignupT");
            if (msgSignupT != null) {
        %>
        <table>
            <tr>
                <td></td>
                <td style="font-family: verdana;color: red;font-size: 10px" align="center" colspan="4"><%=msgSignupT%></td>
            </tr>     
        </table>

        <%
                session.removeAttribute("msgSignupT");
            }
        %>
        <div class="row">

            <form method="post" action="SignUpTeacher" class="form" enctype="multipart/form-data">
                <table class="table" >
                    <tr>
                        <td >
                            Profile Image
                        </td>
                        <td>
                            <input type="file" name="txtFile" required="" accept="images/*">
                        </td>
                    </tr>                                 
                    <tr>
                        <td >
                            Name
                        </td>
                        <td>
                            <input type="text" name="txtname"  class="form-control" required=""/>
                        </td>
                    </tr>
                    <tr>
                        <td >
                            Email ID
                        </td>
                        <td>
                            <input type="email" name="txtEmail"  class="form-control" required=""/>
                        </td>
                    </tr>
                    <tr>
                        <td >
                            Phone No.
                        </td>
                        <td>
                            <input type="tel" name="txtPhone"  class="form-control" required=""/>
                        </td>
                    </tr>
                    <tr>
                        <td >
                            College Name
                        </td>
                        <td>
                            <input type="text" name="txtCollege"  class="form-control" required=""/>
                        </td>
                    </tr>
                    <tr>
                        <td >
                            College Address
                        </td>
                        <td>
                            <input type="text" name="txtAddress"  class="form-control" required=""/>
                        </td>
                    </tr>
                    <tr>
                        <td >
                            Department
                        </td>
                        <td>
                            <select name="txtDepartment">
                                <option value="cse">
                                    CSE
                                </option>
                                <option value="ECE">
                                    ECE
                                </option>
                                <option value="Mechanical">
                                    Mechanical
                                </option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Password :
                        </td>
                        <td>
                            <input type="password" name="txtpwd"  class="form-control" required=""/>
                        </td>
                    </tr>

                    <tr>
                        <td></td>
                        <td  align="right"  valign="bottom">
                            <input type="submit" value="Sign Up" class="form-control"/>
                        </td>
                    </tr>


                </table>
            </form>
        </div>
    </div>
    <!-- /.container -->
</section>     

<%
    }
%>



<!-- section: team -->

<!-- end section: team -->
<!-- section: services -->
<%
    if (session.getAttribute("userid") != null) {
        if (session.getAttribute("utype").equals("student")) {
%>
<section id="new_projects" class="section orange">
    <div class="container">
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <h4>Upload Project</h4>
        <!-- Four columns -->
        <div class="row">
            <%
                msg = (String) session.getAttribute("MSGnew_projects");
                if (msg != null) {
            %>
            <table>
                <tr>
                    <td></td>
                    <td style="font-family: verdana;color: red;font-size: 10px" align="center" colspan="4"><%=msg%></td>
                </tr>     
            </table>

            <%
                    session.removeAttribute("MSGnew_projects");
                }
            %>
            <form method="post" action="UploadProject" class="form" enctype="multipart/form-data">
                <table class="table" >
                    <tr>
                        <td >
                            Project Name
                        </td>
                        <td>
                            <input type="text" name="txtName" required="" >
                        </td>
                    </tr>                                 
                    <tr>
                        <td >
                            Project Area
                        </td>
                        <td>
                            <input type="text" name="txtArea"  class="form-control" required=""/>
                        </td>
                    </tr>
                    <tr>
                        <td >
                            Project Description
                        </td>
                        <td>
                            <input type="text" name="txtDescription"  class="form-control" required=""/>
                        </td>
                    </tr>
                    <tr>
                        <td >
                            Project Images(360° Images)
                        </td>
                        <td>
                            <input type="file" name="txtImage"  class="form-control" required="" accept="images/*"/>
                        </td>
                    </tr>




                    <tr>
                        <td></td>
                        <td  align="right"  valign="bottom">
                            <input type="submit" value="Upload Project" class="form-control"/>
                        </td>
                    </tr>


                </table>
            </form>
        </div>
    </div>
</section>
<%
        }
    }
%>
<%
    if (session.getAttribute("userid") != null) {
        if (session.getAttribute("utype").equals("student")) {
%>
<section id="myprojects" class="section orange">
    <div class="container">
        <h4>My Projects</h4>
        
        <!-- Four columns -->
        <%
//                            id	project_name	description	area	image	rdate	userid
             conn = connection.connect.openConnection();
             stat = conn.prepareStatement("select * from tblprojects where userid=?");
            stat.setString(1, (String) session.getAttribute("userid"));
             rs = stat.executeQuery();
            while (rs.next()) {
        %>
        <div class="row">
            <div class="span3 animated-fast flyIn">
                <div class="service-box">
                    <img src="UploadedImage/" alt="" class="img-polaroid" />
                    <iframe width="280" height="190" allowfullscreen style="border-style:none;" src="pannellum.htm?panorama=UploadedImage/<%=rs.getString("image")%>"></iframe>

                    <h2><%=rs.getString("project_name")%></h2>
                    <p>
                        <%=rs.getString("description")%>
                    </p>
                </div>
            </div>
             <a href="view_comments.jsp?cid=<%=rs.getString("id")%>" class="form-control btn-primary">View Comments</a>"
               
        </div>
        <%
            }
        %>

    </div>
</section>  

<%
        }
    }
%>

<section id="projects" class="section orange">
    <div class="container">
        <h4>Projects</h4>
        <form action="index.jsp#projects" method="post">
          
            <br>
            <br>
            <table class="table">
                <tr>
                    <td>
                        <input type="text" name="txtSearch" style="height:40px " placeholder="Search Projects" class="form-control">
          
                    </td>
                    <td>
                          <input type="submit" value="Search" class="btn-primary">
                    </td>
                </tr>
            </table>
          
        </form>
        <table class=table>
            <tr>


                <!-- Four columns -->
                <%
        //                            id	project_name	description	area	image	rdate	userid
                     conn = connection.connect.openConnection();
                     String search=request.getParameter("txtSearch");
                     String sql="select * from tblprojects";
                     if(search!=null){
                     sql="select * from tblprojects where project_name like '%"+search+"%' or area like '%"+search+"%' or description like '%"+search+"%'";
                     }
                     System.out.println("sql"+sql);
                     stat = conn.prepareStatement(sql);

                    ResultSet rs1 = stat.executeQuery();
                    int i = 0;
                    while (rs1.next()) {

                        i++;
                %>

                <td>


                    <div class="span3 animated-fast flyIn">
                        <div class="service-box">

                            <iframe width="380" height="290 allowfullscreen style="border-style:none;" src="pannellum.htm?panorama=UploadedImage/<%=rs1.getString("image")%>"></iframe>

                            <h2><%=rs1.getString("project_name")%></h2>
                            <p>
                                <%=rs1.getString("description")%>
                            </p>
                        



                    <%

                        if (session.getAttribute("userid") != null) {
                            if (session.getAttribute("utype").toString().equals("teacher")) {

                    %>
                   
                    <!--for teacher giving comments-->
       
                    <div class="flyIn">
        <link rel="stylesheet" href="//netdna.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="ajax/stylesheet.css">
            <form  action="save_comment.jsp" method="post">
                 <%                    msg = (String) session.getAttribute("MSGComment"+rs1.getString("id"));
                        if (msg != null) {
                    %>
                    <table>
                        <tr>
                            <td></td>
                            <td style="font-family: verdana;color: #000;font-size: 10px" align="center" colspan="4"><%=msg%></td>
                        </tr>     
                    </table>

                    <%
                            session.removeAttribute("MSGComment"+rs1.getString("id"));
                        }
                    %>   
                <input type="text" class="form-control" name="txtComment" placeholder="Comment">
                            <input type="hidden" class="form-control" name="cid" value="<%=rs1.getString("id")%>">
                            <center><div class="stars">

                                    <input class="star star-5" id="star-5<%=rs1.getString("id")%>" type="radio" name="star" value="5"/>
                                    <label class="star star-5" for="star-5<%=rs1.getString("id")%>"></label>
                                    <input class="star star-4" id="star-4<%=rs1.getString("id")%>" type="radio" name="star" value="4"/>
                                    <label class="star star-4" for="star-4<%=rs1.getString("id")%>"></label>
                                    <input class="star star-3" id="star-3<%=rs1.getString("id")%>" type="radio" name="star" value="3"/>
                                    <label class="star star-3" for="star-3<%=rs1.getString("id")%>"></label>
                                    <input class="star star-2" id="star-2<%=rs1.getString("id")%>" type="radio" name="star" value="2"/>
                                    <label class="star star-2" for="star-2<%=rs1.getString("id")%>"></label>
                                    <input class="star star-1" id="star-1<%=rs1.getString("id")%>" type="radio" name="star" value="1"/>
                                    <label class="star star-1" for="star-1<%=rs1.getString("id")%>"></label>

                                </div>  

                            </center>
                            <input type="submit" value="Post Comment" class="form-control btn-primary">
                        </form>
                            <a href="view_comments.jsp?cid=<%=rs1.getString("id")%>" class="form-control btn-primary">View Comments</a>"
                    </div>
                            
</div>
                    </div>

                <%
                            }//chec teacher
                        }//check userid
else{
%>
             <a href="view_comments.jsp?cid=<%=rs1.getString("id")%>" class="form-control btn-primary">View Comments</a>"
               
                <%
}
%>
 </td>  
                 <%
                                                                                if (i % 3 == 0) {
                                %>
                            </tr>
                            <tr>
 </tr>
  <%                                                              }
}
                                %>
                        </table>
                </div>
                </section>
                <!-- end section: services -->
                <!-- section: works -->
              
                <!-- spacer section -->
<!--            <section class="spacer bg3">
                <div class="container">
                    <div class="row">
                        <div class="span12 aligncenter flyLeft">
                            <blockquote class="large">
                                We are an established and trusted web agency with a reputation for commitment and high integrity
                            </blockquote>
                        </div>
                        <div class="span12 aligncenter flyRight">
                            <i class="icon-rocket icon-10x"></i>
                        </div>
                    </div>
                </div>
            </section>-->
            <!-- end spacer section -->
            <!-- section: blog -->
<!--            <section id="blog" class="section">
                <div class="container">
                    <h4>Our Blog</h4>
                     Three columns 
                    <div class="row">
                        <div class="span3">
                            <div class="home-post">
                                <div class="post-image">
                                    <img class="max-img" src="img/blog/img1.jpg" alt="" />
                                </div>
                                <div class="post-meta">
                                    <i class="icon-file icon-2x"></i>
                                    <span class="date">June 19, 2013</span>
                                    <span class="tags"><a href="#">Design</a>, <a href="#">Blog</a></span>
                                </div>
                                <div class="entry-content">
                                    <h5><strong><a href="#">New design trends</a></strong></h5>
                                    <p>
                                        Lorem Ipsum is simply dummy text of the printing and typesetting industry. &hellip;
                                    </p>
                                    <a href="#" class="more">Read more</a>
                                </div>
                            </div>
                        </div>
                        <div class="span3">
                            <div class="home-post">
                                <div class="post-image">
                                    <img class="max-img" src="img/blog/img2.jpg" alt="" />
                                </div>
                                <div class="post-meta">
                                    <i class="icon-file icon-2x"></i>
                                    <span class="date">June 19, 2013</span>
                                    <span class="tags"><a href="#">Design</a>, <a href="#">News</a></span>
                                </div>
                                <div class="entry-content">
                                    <h5><strong><a href="#">Retro is great</a></strong></h5>
                                    <p>
                                        Lorem Ipsum is simply dummy text of the printing and typesetting industry. &hellip;
                                    </p>
                                    <a href="#" class="more">Read more</a>
                                </div>
                            </div>
                        </div>
                        <div class="span3">
                            <div class="home-post">
                                <div class="post-image">
                                    <img class="max-img" src="img/blog/img3.jpg" alt="" />
                                </div>
                                <div class="post-meta">
                                    <i class="icon-file icon-2x"></i>
                                    <span class="date">June 22, 2013</span>
                                    <span class="tags"><a href="#">Design</a>, <a href="#">Tips</a></span>
                                </div>
                                <div class="entry-content">
                                    <h5><strong><a href="#">Isometric mockup</a></strong></h5>
                                    <p>
                                        Lorem Ipsum is simply dummy text of the printing and typesetting industry. &hellip;
                                    </p>
                                    <a href="#" class="more">Read more</a>
                                </div>
                            </div>
                        </div>
                        <div class="span3">
                            <div class="home-post">
                                <div class="post-image">
                                    <img class="max-img" src="img/blog/img4.jpg" alt="" />
                                </div>
                                <div class="post-meta">
                                    <i class="icon-file icon-2x"></i>
                                    <span class="date">June 27, 2013</span>
                                    <span class="tags"><a href="#">News</a>, <a href="#">Tutorial</a></span>
                                </div>
                                <div class="entry-content">
                                    <h5><strong><a href="#">Free icon set</a></strong></h5>
                                    <p>
                                        Lorem Ipsum is simply dummy text of the printing and typesetting industry. &hellip;
                                    </p>
                                    <a href="#" class="more">Read more</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="blankdivider30"></div>
                    <div class="aligncenter">
                        <a href="#" class="btn btn-large btn-theme">More blog post</a>
                    </div>
                </div>
            </section>-->

            <!-- end spacer section -->
            <!-- section: contact -->
            <section id="contact" class="section green">
                <div class="container">
                    <h4>Get in Touch</h4>
                    <p>
                       Contact the team and solve your issue.
                    </p>
                    <div class="blankdivider30">
                    </div>
                    <div class="row">
                        <div class="span12">
                            <div class="cform" id="contact-form">
                                <div id="sendmessage">Your message has been sent. Thank you!</div>
                                <div id="errormessage"></div>
                                <form action="" method="post" role="form" class="contactForm">
                                    <div class="row">
                                        <div class="span6">
                                            <div class="field your-name form-group">
                                                <input type="text" name="name" class="form-control" id="name" placeholder="Your Name" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                                                <div class="validation"></div>
                                            </div>
                                            <div class="field your-email form-group">
                                                <input type="text" class="form-control" name="email" id="email" placeholder="Your Email" data-rule="email" data-msg="Please enter a valid email" />
                                                <div class="validation"></div>
                                            </div>
                                            <div class="field subject form-group">
                                                <input type="text" class="form-control" name="subject" id="subject" placeholder="Subject" data-rule="minlen:4" data-msg="Please enter at least 8 chars of subject" />
                                                <div class="validation"></div>
                                            </div>
                                        </div>
                                        <div class="span6">
                                            <div class="field message form-group">
                                                <textarea class="form-control" name="message" rows="5" data-rule="required" data-msg="Please write something for us" placeholder="Message"></textarea>
                                                <div class="validation"></div>
                                            </div>
                                            <input type="submit" value="Send message" class="btn btn-theme pull-left">
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <!-- ./span12 -->
                    </div>
                </div>
            </section>
            <section id="about" class="section">
    <div class="container">
        <h4>Who We Are</h4>
        <div class="row">
            <div class="span4 offset1">
                <div>
                    <h2>We live with <strong>creativity</strong></h2>
                    <p>
                      With the implementation of the idea named Eduexibit,  solves a real life problem students face , basically the projects students make in their 4 years of engineering career is only limited with the presentation to college faculty members only. 

With the plans to support students for their ideas this website gives an open platform for the company members , teachers and government organisations who funds the young startup ideas to connect with the student and see their projects in the real time environment through this website(Eduexibit) consisting project idea, project related 360 images view hence allowing the students to present their projects beyond the college premises. 
Also with the hosting of special live events they will be able to to view the projects with just a click through this website .</p>
                </div>
            </div>
            <div class="span6">
                <div class="aligncenter">
                    <img src="img/icons/creativity.png" alt="" />
                </div>
            </div>
        </div>
<!--        <div class="row">
            <div class="span2 offset1 flyIn">
                <div class="people">
                    <img class="team-thumb img-circle" src="img/team/img-1.jpg" alt="" />
                    <h3>John Doe</h3>
                    <p>
                        Art director
                    </p>
                </div>
            </div>
            <div class="span2 flyIn">
                <div class="people">
                    <img class="team-thumb img-circle" src="img/team/img-2.jpg" alt="" />
                    <h3>Mike Doe</h3>
                    <p>
                        Web developer
                    </p>
                </div>
            </div>
            <div class="span2 flyIn">
                <div class="people">
                    <img class="team-thumb img-circle" src="img/team/img-3.jpg" alt="" />
                    <h3>Neil Doe</h3>
                    <p>
                        Web designer
                    </p>
                </div>
            </div>
            <div class="span2 flyIn">
                <div class="people">
                    <img class="team-thumb img-circle" src="img/team/img-4.jpg" alt="" />
                    <h3>Mark Joe</h3>
                    <p>
                        UI designer
                    </p>
                </div>
            </div>
            <div class="span2 flyIn">
                <div class="people">
                    <img class="team-thumb img-circle" src="img/team/img-5.jpg" alt="" />
                    <h3>Stephen B</h3>
                    <p>
                        Digital imaging
                    </p>
                </div>
            </div>
        </div>-->
    </div>
    <!-- /.container -->
</section>
            <%@include file="footer.jsp" %>