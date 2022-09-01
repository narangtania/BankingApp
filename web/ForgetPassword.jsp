<html>
    
    <body>
        <h1 align="center">Forget password</h1>
        <form action="ForgetPasswordDBMS.jsp" method="post">
           <table border="2" align="center">
               <tr>
                   <td>Enter Account Number</td><td><input type="text" name="accountno"><br></td>
               </tr>
               <tr>
                   <td>Select security question </td><td><select name="sques">
                            <option>Nick name</option>
                             <option>First school</option>
                              <option>First car</option>
                               <option>bank name</option>
                       </select><br></td>
               </tr>
               <tr>
                   <td>Enter answer</td><td><input type="text" name="ans"><br></td>
               </tr>
               <tr>
                   <td><input type="submit" name="b1" value="Proceed"></td>
                        </tr>
           
       </form>
    </body>
</html>