<html>
    
    <body>
        <h1 align="center">Welcome to Sopra Steria Banking!</h1>
        <br>
        <br>
        <br>
        <form action="Check.jsp" method="post">
             <table border="2" align="center">
            <tr>
                <td>Enter Role</td><td><select name="role">
                        <option>Admin</option>
                <option>Customer</option>
            </select><br></td>
            </tr>
            <tr>
                <td>Enter Account Number:</td><td><input type="text" name="accountno"><br></td>
            </tr>
            <tr>
                <td>Enter Password</td><td><input type="password" name="password"><br></td>
            </tr>
            <tr>
                <td><input type="submit" name="b1" value="Login"></td>
                <td><input type="reset" name="b2" value="Reset"></td>
            </tr>
            
            </table>
            <h3 align="center"><a href="ForgetPassword.jsp">Forget Password</a></h3>
            <h3 align="center"><a href="map.jsp">Office address</a></h3>
        </form>
      
    </body>
</html>
