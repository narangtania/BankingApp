<%@page import="com.AmountToWords" %>
<html>
    
    <body>
        <h1>Deposit Receipt</h1>
        <%
            String amount=session.getAttribute("amount").toString();
            
            AmountToWords obj=new AmountToWords();
            out.println(session.getAttribute("accountno"));
            out.println(session.getAttribute("ref"));
            out.println(session.getAttribute("date"));
            out.println(session.getAttribute("transid"));
           out.println(obj.convert(Integer.parseInt(amount)));
            
            %>
            
        <button onclick="window.print()">Download Receipt</button>
        
    </body>
</html>
