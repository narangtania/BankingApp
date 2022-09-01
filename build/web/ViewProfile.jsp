<html>
    <body>
        <h1>View Profile Page</h1>
        
        <form action ="CustomerUpdate.jsp" method="post">
        <%
            out.println("Welcome "+session.getAttribute("loginname"));
            out.println(" Account No. " + session.getAttribute("accountno"));
                        
        %>
        <br>
    <html>
    <body>
        <form action ="CustomerUpdate.jsp" method="post">
            Select<select name ="choice">
                <option value ="name">Name </option>
                <option value ="gender">Gender</option>
                <option value ="dob">DOB</option>
                <option value ="address">Address</option>
                <option value ="mobile">Mobile</option>
                <option value ="sques">Security Question</option>
                <option value ="sans">Security Answer</option>
            </select>
            <input type="text" name ="txt1"><br><br>
            <input type="submit" name ="b1" value="Update">
        </form>
    </body>
</html>

    </body>
</html>

    </body>
</html>
