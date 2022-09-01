<html>
    
    <body>
        <h1>Fund Transfer</h1>
        
         <%
         out.println("Welcome     \t  :"+session.getAttribute("accountno"));
         out.println("   \t   "+session.getAttribute("loginname"));
         %>
        <form action="FundTransferDBMS.jsp" method="post">
            <table border="5" bgcolor="gold">
                
                 <tr>
                    <td>Account To</td>
                    <td><input type="text" name="accountto"></td>
                </tr>
                 <tr>
                    <td>Date</td>
                    <td><input type="date" name="date"></td>
                </tr>
               
                 <tr>
                    <td>Amount</td>
                    <td><input type="text" name="amount"></td>
                </tr>
                <tr>
                    <td><input type="submit" name="b1" value="Transfer"></td>
                    <td><input type="reset" name="b2" value="Reset"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
