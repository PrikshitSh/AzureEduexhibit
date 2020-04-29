 <!DOCTYPE HTML>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <title>EduExhibit</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <link href="css/bootstrap-responsive.css" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet">
        <link href="color/default.css" rel="stylesheet">
        <link rel="shortcut icon" href="img/favicon.ico">
        <!-- =======================================================
    Theme Name: Maxim
    Theme URL: https://bootstrapmade.com/maxim-free-onepage-bootstrap-theme/
    Author: BootstrapMade.com
    Author URL: https://bootstrapmade.com
        ======================================================= -->
        <!-- Latest compiled and minified standalone viewer -->


        <!-- Latest compiled and minified JavaScript -->
        <script src="https://cdn.jsdelivr.net/npm/pannellum@2.5.6/build/pannellum.js"></script>

        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/pannellum@2.5.6/build/pannellum.css">
    </head>

    <body>
        <!-- navbar -->
        <div class="navbar-wrapper">
            <div class="navbar navbar-inverse navbar-fixed-top">
                <div class="navbar-inner">
                    <div class="container">
                        <!-- Responsive navbar -->
                        <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse"><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span>
                        </a>
                        <header>
                            <div class="left">
                                <h1 class="brand"><a>EduExhibit</a></h1>
                                <br>
                                <center><h1  style="font-size:50;color:powderblue;">Online virtual exhibition platform</h1></center>
                            </div>
                            <div class="right">
                                <div class="span10 offset11">
                                    <ul class="nav navbar-nav navbar-right nav-pills">
                                        <li><a href="#"><i class="icon-circled icon-bgdark icon-facebook icon-2x"></i></a></li>
                                        <li><a href="#"><i class="icon-circled icon-bgdark icon-twitter icon-2x"></i></a></li>
                                    </ul>

                                </div>
                            </div>
                        </header>         



                        <!-- navigation -->
                        <nav class="pull-right nav-collapse collapse">
                            <ul id="menu-main" class="nav">
                                <%
                                    String userid = null, utype = null;
                                    userid = (String) session.getAttribute("userid");
                                    utype = (String) session.getAttribute("utype");
                                %>
                                <%
                                    if (userid != null) {
                                        if (utype.equalsIgnoreCase("student")) {
                                %>

                                <!--                                <li><a href="#profile">Profile</a></li>
                                -->
                                <li><a href="index.jsp#new_projects">New Projects</a></li>
                                <li><a href="index.jsp#my_projects">My Projects</a></li>
                                    <%
                                        }
                                    %>



                                <%
                                } else {
                                %>
                             <li>
                                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        Student
                                    </a>
                                    <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                                        <ul>
                                            <li>
                                              <a class="dropdown-item" href="index.jsp#login">Student Login</a>
                                      
                                            </li>
                                            <li class="nav-link">
                                                   <a class="dropdown-item" href="index.jsp#signup">Student Sign up</a>    
                                       
                                            </li>
                                          
                                           
                                        </ul>
                                       
                                        
                                     
                                    </div>


                                </li>
 <li>
                                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        Expert
                                    </a>
                                    <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                                        <ul>
                                            <li>
                                                <a class="dropdown-item" href="index.jsp#login_teacher">Expert Login</a>
                                      
                                            </li>
                                          
                                          <li>
                                                <a class="dropdown-item" href="index.jsp#signup_teacher">Expert Sign up</a>
                                      
                                            </li>
                                           
                                           
                                        </ul>
                                       
                                        
                                     
                                    </div>


                                </li>
 <li>
                                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        Admin
                                    </a>
                                    <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                                        <ul>
                                          
                                            <li>
                                                  <a class="dropdown-item" href="index.jsp#login_admin">Admin Login</a>
                                            </li>
                                          
                                           
                                           
                                        </ul>
                                       
                                        
                                     
                                    </div>


                                </li>
                                <%
                                    }
                                %>

                                <li><a href="index.jsp#projects">Projects</a></li>
                                <li><a href="index.jsp#brochure">Brochure </a></li>
                                <li><a href="index.jsp#colleges">Colleges </a></li>
                                <li><a href="online_exhibition.jsp">Online Exhibition </a></li>
                                <li><a  href="index.jsp#about">About</a></li>
                                    <%
                                        if (userid != null) {

                                    %>

                                <li><a href="logout">Logout</a></li>
                                    <%                                        }
                                    %>
                                <!--                                
                                                               
                                                                <li><a title="contact" href="#contact">Contact</a></li>
                                -->
                            </ul>
                        </nav>






                    </div>
                </div>
            </div>
        </div>

