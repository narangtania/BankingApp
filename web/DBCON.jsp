<%@page import=" java.sql.*" %>
<html>
   
    <body>
        <%! Connection con;%>
        <%
            try
        {
            Class.forName("com.mysql.jdbc.Driver");
            String Url="jdbc:mysql://localhost:3306/soprabanking";
            String Dbuser="root";
            String Dbpass="root";
            con=DriverManager.getConnection(Url,Dbuser,Dbpass);
            //out.println("Success");
        }
        catch(Exception e)
        {
            out.println("Failed"+e);
        }
            %>
    </body>
</html>
