package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class RequestCheckbook_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

 Connection con;
  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/DBCON.jsp");
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
      response.setContentType("text/html");
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
      out.write("<html>\n");
      out.write("   \n");
      out.write("    <body>\n");
      out.write("        ");
      out.write("\n");
      out.write("        ");

            try
        {
            Class.forName("com.mysql.jdbc.Driver");
            String Url="jdbc:mysql://localhost:3306/soprabanking";
            String Dbuser="root";
            String Dbpass="root";
            con=DriverManager.getConnection(Url,Dbuser,Dbpass);
            //out.println("Success");
        }
        catch(Exception e)
        {
            out.println("Failed"+e);
        }
            
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    \n");
      out.write("    <body>\n");
      out.write("        <h1>Request CheckBook Page</h1>\n");
      out.write("        <form >\n");
      out.write("            ");

                out.println("Account Number:"+session.getAttribute("accountno"));
                
      out.write("\n");
      out.write("                <br>\n");
      out.write("                No.of Cheque Books:<input type=\"text\" name=\"txt1\"><br>\n");
      out.write("                No.of Cheque leaves:<input type=\"text\" name=\"txt2\"><br>\n");
      out.write("                ");

               String viewquery = "select * from account where accno='"+session.getAttribute("accountno")+"';";  
               
                
                Statement st = con.createStatement();
                ResultSet rs = st.executeQuery(viewquery);
                
                while(rs.next()) {
                    out.println("Delivery Address: " + rs.getString(5));
                    
                }
                //out.println("Delivery Address: "+session.getAttribute("Address"));
                
      out.write("\n");
      out.write("                <br>\n");
      out.write("                <input type=\"checkbox\" name=\"b2\">I agree to terms and conditions<br>\n");
      out.write("                 ");

            if(request.getParameter("b2")!=null)
            {
             response.sendRedirect("RequestCheckbookDBMS.jsp");
            }
        
      out.write("\n");
      out.write("         <input type=\"submit\" name=\"b1\" value=\"confirm\">\n");
      out.write("\n");
      out.write("                \n");
      out.write("               \n");
      out.write("        </form>\n");
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
