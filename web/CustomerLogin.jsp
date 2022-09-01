<%@page import="java.util.Date" %>
<html>
    
    <body>
         <h1>CUSTOMER LOGIN PAGE!</h1>
         <%
         out.println("Welcome     \t  :"+session.getAttribute("accountno"));
         out.println("   \t   "+session.getAttribute("loginname"));
         
         Date dt;
            dt=(Date)session.getAttribute("dat");
            out.println("<br>Last Access Time: "+dt);
                    
            dt=new Date();
            out.println("<br> Current Access Time "+dt);
            session.setAttribute("dat", dt);
         %>
         <br>
        1.<a href="ViewProfileDBMS.jsp"> View Profile</a><br>
        2.<a href="ChangePassword.jsp"> Change Password</a><br>
        3.<a href="ViewStatement.jsp"> View Statement</a><br>
        4.<a href="FundTransfer.jsp"> Fund Transfer</a><br>
        5.<a href="RequestCheckbook.jsp">Request Checkbook</a><br>
    </body>
</html>
