<html>
    
    <body>
       <h1>Withdraw</h1>
       <form action="WithdrawDBMS.jsp" method="post">
            <table border="5" bgcolor="gold">
                <tr>
                    <td>Account Number</td>
                    <td><input type="text" name="accountno"></td>
                </tr>
                 <tr>
                    <td>Reference</td>
                    <td><input type="text" name="ref"></td>
                </tr>
                 <tr>
                    <td>Date of Transaction</td>
                    <td><input type="date" name="date"></td>
                </tr>
              
                 <tr>
                     <td>Withdraw Amount</td>
                    <td><input type="text" name="amount"></td>
                </tr>
                 
                <tr>
                    <td><input type="submit" name="b1" value="Withdraw"></td>
                    <td><input type="reset" name="b2" value="Reset"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
