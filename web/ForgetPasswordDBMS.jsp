<%@include file="DBCON.jsp" %>
<html>
    
    <body>
        <h1>Forget Password DBMS Page</h1>
        <%
            String faccno = request.getParameter("accountno");
            String fans = request.getParameter("ans");
            
            try {
                String viewQuery ="select * from account where accno='" + faccno + "'";
                Statement stmt = con.createStatement();
                ResultSet rs = stmt.executeQuery(viewQuery);
                
                String ans = "";
                while(rs.next()) {
                    ans = rs.getString(10);
                }
                
                if(fans.equalsIgnoreCase(ans)) {
//                    RequestDispatcher disp = request.getRequestDispatcher("ChangePassword.jsp");
//                    disp.include(request, response);
                    //session.setAttribute("faccno", faccno);
                    response.sendRedirect("ChangePassword.jsp");
                }
                else {
                    out.println("Answers do not match");
                }
            }
            catch(Exception e) 
            {
                out.println("Record not found" + e);
            }
        %>
    </body>
</html>
