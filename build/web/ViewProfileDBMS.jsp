<%@include file="DBCON.jsp" %>
<html>
    <body>
        <h1>View Profile DBMS</h1>
          <%
            out.println("Welcome "+session.getAttribute("loginname"));
            out.println("<br>");
            out.println("Account No " + session.getAttribute("accountno"));
            out.println("<br>");
        
        try
        {
            String viewquery ="select * from account where accno='"+session.getAttribute("accountno")+"'";
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery(viewquery);

            while(rs.next())
            {
                out.println("<html>");
                out.println("<body>");
                out.println("<form action='ViewProfile.jsp' method=post>");
                out.println("<table border=2>");
                
                out.println("<tr>"); 
                out.println("<td>");
                out.println("Account Number");
                out.println("</td>");                
                out.println("<td>");
                out.println(rs.getString(1));                
                out.println("</td>");                
                out.println("</tr>"); 
                
                out.println("<tr>"); 
                out.println("<td>");
                out.println("Name");
                out.println("</td>");                
                out.println("<td>");
                out.println(rs.getString(2));                
                out.println("</td>");                
                out.println("</tr>"); 
                
                out.println("<tr>");
                out.println("<td>");
                out.println("Gender");
                out.println("</td>");
                out.println("<td>");
                out.println(rs.getString(3));
                out.println("</td>");
                out.println("</tr>");
                
                out.println("<tr>");
                out.println("<td>");
                out.println("DOB");
                out.println("</td>");
                out.println("<td>");
                out.println(rs.getString(4));
                out.println("</td>");
                out.println("</tr>");
                
                out.println("<tr>");
                out.println("<td>");
                out.println("Address");
                out.println("</td>");
                out.println("<td>");
                out.println(rs.getString(5));
                out.println("</td>");
                out.println("</tr>");
                
                out.println("<tr>");
                out.println("<td>");
                out.println("Mobile");
                out.println("</td>");
                out.println("<td>");
                out.println(rs.getString(6));
                out.println("</td>");
                out.println("</tr>");
                
                out.println("<tr>");
                out.println("<td>");
                out.println("Role");
                out.println("</td>");
                out.println("<td>");
                out.println(rs.getString(7));
                out.println("</td>");
                out.println("</tr>");
                
                out.println("<tr>");
                out.println("<td>");
                out.println("Password");
                out.println("</td>");
                out.println("<td>");
                out.println(rs.getString(8));
                out.println("</td>");
                out.println("</tr>");
                
                out.println("<tr>");
                out.println("<td>");
                out.println("Security Question");
                out.println("</td>");
                out.println("<td>");
                out.println(rs.getString(9));
                out.println("</td>");
                out.println("</tr>");
                
                out.println("<tr>");
                out.println("<td>");
                out.println("Security Answer");
                out.println("</td>");
                out.println("<td>");
                out.println(rs.getString(10));
                out.println("</td>");
                out.println("</tr>");            
                
                out.println("</table>");
                out.println("<br>");
                out.println("<input type='submit' name='b1' value='EDIT'>");
                out.println("</form>");
                out.println("</body>");
                out.println("</html>");
            }
             
        }
        catch(Exception e)
        {
            out.println("data not found"+e);
        }
        %>
    </body>
</html>
