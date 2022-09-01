
<html>

    <body>
        <h1>Transaction Page!</h1><br><br>
        <h3>View Transaction By:</h3>
        <form action="TransactionDBMS.jsp" method="post">
            <select name="choice">
                <option>All</option>
                <option>Account Number</option>
                <option>Date of Transaction</option>
                <option>Transaction ID</option>
                
            </select>
            <input type="text" name="txt1"><br>
            <input type="submit" name="b1" value="View">
            
        </form>
    </body>
</html>
