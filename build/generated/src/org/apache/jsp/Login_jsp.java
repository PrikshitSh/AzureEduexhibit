package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/header_menu.html");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\"\n");
      out.write("    \"http://www.w3.org/TR/html4/loose.dtd\">\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/style-sheet.css\" type=\"text/css\"/>\n");
      out.write("        <link type=\"text/css\" rel=\"stylesheet\" href=\"css/stylesheet.css\"/>\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <script type=\"text/javascript\">\n");
      out.write("            function validate(){\n");
      out.write("                if(document.getElementById(\"cmbType\").value==\"-1\"){\n");
      out.write("                    alert(\"Select user type!\");\n");
      out.write("                    return false;\n");
      out.write("                }\n");
      out.write("                if(document.getElementById(\"txtname\").value==\"\"){\n");
      out.write("                    alert(\"Enter user name !\");\n");
      out.write("                    return false;\n");
      out.write("                }\n");
      out.write("                if(document.getElementById(\"txtpwd\").value==\"\"){\n");
      out.write("                    alert(\"Enter your password !\");\n");
      out.write("                    return false;\n");
      out.write("                }\n");
      out.write("            }\n");
      out.write("\n");
      out.write("        </script>\n");
      out.write("    </head>\n");
      out.write("    ");

                String msg = null;
                msg = (String) session.getAttribute("MSG");
    
      out.write("\n");
      out.write("    <body>\n");
      out.write("        <table width=\"80%\" bgcolor=\"White\" align=\"center\" bgcolor=\"white\">\n");
      out.write("            <tr>\n");
      out.write("                <td colspan=\"2\" height=\"40px;\">\n");
      out.write("                    ");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <title> Online Recipe</title>\r\n");
      out.write("\t\t<link href=\"style2/style1.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n");
      out.write("\t\t\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("        <table>\r\n");
      out.write("           <center> <tr>\r\n");
      out.write("                <td height=\"40px\" colspan=\"2\">\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t<div class=\"logo\">Online <strong>Recipe</strong></div>\r\n");
      out.write("\t\t\t\t <div class=\"menu\">\r\n");
      out.write("      <center><ul class=\"solidblockmenu\">\r\n");
      out.write("        <li><a href=\"MallShopingHome.jsp\">Home</a></li>\r\n");
      out.write("          <li><a href=\"SignUp.jsp\">User Registration</a></li>\r\n");
      out.write("        <li><a href=\"AboutUs.jsp\">About Us</a></li>\r\n");
      out.write("        <li><a href=\"ContactUs.jsp\">Contact Us</a></li>       \r\n");
      out.write("        <!--<li><a href=\"Login.jsp\">Admin Login</a></li>-->\r\n");
      out.write("     \r\n");
      out.write("      </ul></center>\r\n");
      out.write("      <div class=\"clear\"></div>\r\n");
      out.write("    </div>\r\n");
      out.write("  </div>\r\n");
      out.write("  <div class=\"search\">\r\n");
      out.write("  <form method=\"get\" action=\"http://www.google.com/search\" >\r\n");
      out.write("    <div class=\"search-text\"> Search the world of shopping!&nbsp;\r\n");
      out.write("      <input type=\"text\" size=\"40\" />\r\n");
      out.write("      &nbsp;&nbsp;</div>\r\n");
      out.write("    <div style=\"float:left; margin-left:5px; margin-top:10px;\">\r\n");
      out.write("\t\r\n");
      out.write("      <input type=\"image\" src=\"images/search.jpg\" />\r\n");
      out.write("    </div>\r\n");
      out.write("\t</form>\r\n");
      out.write("  </div>\r\n");
      out.write("\r\n");
      out.write("                   \r\n");
      out.write("                </td>\r\n");
      out.write("            </tr></td></center>\r\n");
      out.write("                \r\n");
      out.write("            \r\n");
      out.write("            <tr>\r\n");
      out.write("                <td height=\"180px;\">\r\n");
      out.write("      <marquee direction=\"right\">   \r\n");
      out.write("                   <img src=\"Image/3.jpeg\" width=\"200\" height=\"204\" alt=\"img\" border=\"0\" />\r\n");
      out.write("          <img src=\"Image/3.jpeg\" width=\"200\" height=\"204\" alt=\"img\" border=\"0\" />\r\n");
      out.write("          <img src=\"Image/4.jpeg\" width=\"200\" height=\"204\" alt=\"img\" border=\"0\" />\r\n");
      out.write("          <img src=\"Image/3.jpeg\" width=\"200\" height=\"204\" alt=\"img\" border=\"0\" />\r\n");
      out.write("           <img src=\"Image/2.png\" width=\"200\" height=\"204\" alt=\"img\" border=\"0\" />\r\n");
      out.write("          <img src=\"Image/3.jpeg\" width=\"200\" height=\"204\" alt=\"img\" border=\"0\" />\r\n");
      out.write("          <img src=\"Image/3.jpeg\" width=\"200\" height=\"204\" alt=\"img\" border=\"0\" />\r\n");
      out.write("          <img src=\"Image/3.jpeg\" width=\"200\" height=\"204\" alt=\"img\" border=\"0\" />\r\n");
      out.write("             <img src=\"Image/1.jpg\" width=\"200\" height=\"204\" alt=\"img\" border=\"0\" />\r\n");
      out.write("                 </marquee>\r\n");
      out.write("\r\n");
      out.write("                </td>\r\n");
      out.write("    </tr>\r\n");
      out.write("      \r\n");
      out.write("</table>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
      out.write("\n");
      out.write("                </td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td colspan=\"2\" width=\"100%\" style=\"height:15px;\" class=\"toplinls\"></td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td width=\"65%\" valign=\"top\">\n");
      out.write("                    <table>\n");
      out.write("                        <tr><td>&nbsp;</td></tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td class=\"heading\">\n");
      out.write("                                About The Online Recipe\n");
      out.write("                            </td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr><td>&nbsp;</td></tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td align=\"justify\" class=\"text\">\n");
      out.write("                                Experience and become a leader in retail, entertainment and attractions. Mall of America is one of the top tourist destinations in the country as well as one of the most recognizable brands.\n");
      out.write("                                Mall of America has earned a national reputation for entertaining guests. From musical acts to celebrity book signings to fashion shows, Mall of America is the Hollywood of the Midwest. Along with coverage in many national and local broadcast and print media outlets, Mall of America has been featured on the Discovery Channel, Travel Channel and TLC. By hosting more than 400 events each year, the Mall has become the place where fans can meet and greet their favorite celebrities or take part in interactive, one-of-a-kind events.\n");
      out.write("                                Mall of America has been described as a city within a city. Along with an extensive range of retail, restaurants and entertainment, there are many unique features to Mall of America likely to be found in any community.\n");
      out.write("                                Metropolitan Learning Alliance - A mall campus available for high school students from four-area school districts offering courses specific to careers in visual arts, law enforcement, hospitality, retail management and business.\n");
      out.write("                                South Hennepin Adult Programs in Education (SHAPE) - Offers classes in adult basic education and English as a second language.\n");
      out.write("                            </td>\n");
      out.write("                        </tr>\n");
      out.write("                    </table>\n");
      out.write("                </td>\n");
      out.write("                <td width=\"35%\" valign=\"top\" align=\"right\">\n");
      out.write("                    <table>\n");
      out.write("                        <tr>\n");
      out.write("                            <td bgcolor=\"#f1f1f1\" valign=\"top\" align=\"right\">\n");
      out.write("                                <form method=\"post\" action=\"login\">\n");
      out.write("                                    <table cellpadding=\"3\" cellspacing=\"3\" align=\"center\" width=\"100%\" >\n");
      out.write("                                        <tr>\n");
      out.write("                                            <td colspan=\"2\" class=\"white-font\" align=\"center\">\n");
      out.write("                                                Login\n");
      out.write("                                            </td>\n");
      out.write("                                        </tr>                                       \n");
      out.write("                                        <tr>\n");
      out.write("                                            <td valign=\"bottom\"  id=\"label\">\n");
      out.write("                                                User Type :\n");
      out.write("                                            </td>\n");
      out.write("                                            <td>\n");
      out.write("                                                <select name=\"cmbType\" id=\"cmbType\" class=\"combo\">\n");
      out.write("                                                    <option value=\"-1\">--Select--</option>\n");
      out.write("                                                    <option value=\"Admin\">Admin</option>\n");
      out.write("                                                   \n");
      out.write("                                                </select>\n");
      out.write("                                            </td>\n");
      out.write("                                        </tr>\n");
      out.write("                                        <tr>\n");
      out.write("                                            <td valign=\"middle\"  id=\"label\">\n");
      out.write("                                                Login Name :\n");
      out.write("                                            </td>\n");
      out.write("                                            <td valign=\"bottom\">\n");
      out.write("                                                <input type=\"text\" name=\"txtname\" id=\"txtname\" size=\"25\"/>\n");
      out.write("                                            </td>\n");
      out.write("                                        </tr>\n");
      out.write("                                        <tr>\n");
      out.write("                                            <td  valign=\"middle\"  id=\"label\">\n");
      out.write("                                                Password :\n");
      out.write("                                            </td>\n");
      out.write("                                            <td valign=\"bottom\">\n");
      out.write("                                                <input type=\"password\" name=\"txtpwd\" id=\"txtpwd\" size=\"25\"/>\n");
      out.write("                                            </td>\n");
      out.write("                                        </tr>\n");
      out.write("                                        ");

                                                    if (msg != null) {
                                        
      out.write("\n");
      out.write("                                        <tr>\n");
      out.write("                                            <td style=\"font-family: verdana;color: red;font-size: 10px\" align=\"center\" colspan=\"4\">");
      out.print(msg);
      out.write("</td>\n");
      out.write("                                        </tr>\n");
      out.write("                                        ");

                                                        session.removeAttribute("MSG");
                                                    } else {
                                                        session.setAttribute("MSG", "");
                                                    }
                                        
      out.write("\n");
      out.write("                                        <tr>\n");
      out.write("                                            <td colspan=\"2\" align=\"right\"  valign=\"bottom\">\n");
      out.write("                                                <input type=\"submit\" value=\"Login\" onclick=\"return validate()\"/>\n");
      out.write("                                            </td>\n");
      out.write("                                        </tr>                                       \n");
      out.write("                                        <tr>\n");
      out.write("                                            <td colspan=\"2\">\n");
      out.write("                                                <img src=\"Image/head.jpg\" width=\"270px\" height=\"100px\" alt=\"\"/>\n");
      out.write("                                            </td>\n");
      out.write("                                        </tr>\n");
      out.write("                                    </table>\n");
      out.write("                                </form>\n");
      out.write("                            </td>\n");
      out.write("                        </tr>\n");
      out.write("                    </table>\n");
      out.write("                </td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td height=\"50\" colspan=\"2\" align=\"center\" class=\"toplinls\" width=\"100%\">\n");
      out.write("                    <span class=\"whitefont\">Online Shopping</span>\n");
      out.write("                </td>\n");
      out.write("            </tr>\n");
      out.write("        </table>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
