<html>
    
    <body>
        <h1>Deposit Login!</h1>
        <form action="DepositDBMS.jsp" method="post">
            <table border="5" bgcolor="azure">
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
                     <td>Deposit Amount</td>
                    <td><input type="text" name="depamount"></td>
                </tr>
                 
                <tr>
                    <td><input type="submit" name="b1" value="Deposit"></td>
                    <td><input type="reset" name="b2" value="Reset"></td><br>
                
                </tr>
            </table>
        </form>
    </body>
</html>
