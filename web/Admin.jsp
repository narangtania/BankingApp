<%@page import="java.util.Date" %>
<html>
    
    <body>
        <h1 align="center">
        <%
         out.println("Welcome     \t  :"+session.getAttribute("accountno"));
         out.println("   \t \t  "+session.getAttribute("loginname"));
         
         Date dt;
            dt=(Date)session.getAttribute("dat");
            out.println("<br>Last Access Time: "+dt);
                    
            dt=new Date();
            out.println("<br> Current Access Time "+dt);
            session.setAttribute("dat", dt);
         %>
        </h1>
         <br>
         <h2 align="Left">
        1.<a href="CreateAccount.jsp"> New Account</a><br>
        <br>
        2.<a href="ViewCustomer.jsp"> View Customers</a><br>
        <br>
        3.<a href="Deposit.jsp"> Deposit</a><br>
        <br>
        4.<a href="Withdraw.jsp"> Withdraw</a><br>
        <br>
        5.<a href="Transaction.jsp"> View Transaction</a><br>
         </h2>
    </body>
</html>
