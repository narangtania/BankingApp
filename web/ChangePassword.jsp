<html>
    
    <body>
       <h1>Change Password Page!</h1>
         <%
         out.println("Welcome     \t  :"+session.getAttribute("accountno"));
         out.println("   \t   "+session.getAttribute("loginname"));
         %>
        <form action="ChangePasswordCheck.jsp" method="post">
            Enter old password<input type="text" name="oldpass"><br>
            Enter new password<input type="text" name="newpass"><br>
            Confirm password<input type="text" name="cnpass"><br>
            <input type="submit" name="b1" value="Change password">
        </form>
    </body>
</html>
