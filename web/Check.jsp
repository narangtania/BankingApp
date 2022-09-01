<%@include file="DBCON.jsp" %>
<html>
    
    <body>
        <%
        String role=request.getParameter("role");
        String accountnumber=request.getParameter("accountno");
        String upass=request.getParameter("password");
        
        try
        {
            String viewQuery="select * from account";
            Statement smt= con.createStatement();
            ResultSet rs=smt.executeQuery(viewQuery);
            
            int count=0;
            String loginname="";
            while(rs.next())
            {
             if(role.equalsIgnoreCase(rs.getString(7)) && accountnumber.equalsIgnoreCase(rs.getString(1)) && upass.equals(rs.getString(8)))
            {
            //response.sendRedirect("Success.jsp");
                //out.println("login success <br>");
//                session.setAttribute("user_id", uid);
//                session.setAttribute("user_name", uname);
//                session.setAttribute("user_pass", upass);
                count++;
                loginname=rs.getString(2);
                break;
            }
             
            }
            
             if(count>0)
             {
                 
                 session.setAttribute("accountno", accountnumber);
                 session.setAttribute("loginname", loginname);
                 session.setAttribute("loginpassword",upass);
                 if(role.equalsIgnoreCase("Admin"))
                 {
                     response.sendRedirect("Admin.jsp");
                 }
                 else
                 {
                     response.sendRedirect("CustomerLogin.jsp");
                 }
                 //out.println("login success <br>");
                 //response.sendRedirect("Success.jsp");
             }
            
            else
            {
               
            RequestDispatcher disp=request.getRequestDispatcher("Login.jsp");
            disp.include(request, response);
            out.println("Invalid login and password");
            }
            
        }
        
        catch(Exception e)
        {
            out.println(e);
        }
        %>
        
    </body>
</html>