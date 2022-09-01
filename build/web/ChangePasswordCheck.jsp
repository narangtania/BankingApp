<%@include file="DBCON.jsp" %>
<html>
    
    <body>
        <h1>Change password check page</h1>
        <br>
         <%
         out.println("Welcome     \t  :"+session.getAttribute("accountno"));
         out.println("   \t   "+session.getAttribute("loginname"));
         %>
         <br>
         <br>
       <%
           String s1oldpass=request.getParameter("oldpass");
           String s1newpass=request.getParameter("newpass");
           String s1cnpass=request.getParameter("cnpass");
           //String loginuid=(String)session.getAttribute("user_id");
           
           try
           {
               if(s1newpass.equals(s1cnpass))
               {
                 if(session.getAttribute("loginpassword").equals(s1oldpass)) 
                 {
                   try
                   {
                       String updatepassQuery="update account set password='"+s1newpass+"' where accno='"+session.getAttribute("accountno")+"';";
                       PreparedStatement pst=con.prepareStatement(updatepassQuery);
                       
                       pst.executeUpdate();
                       
                       out.println("Dear"+session.getAttribute("loginname")+"password changed successfully");
                       session.invalidate();
                       
                       response.setHeader("Cache-Control","no-store");
                       response.setHeader("Pragma","no-cache");
                       response.setHeader("Expires","0");
                       out.println("<a href=Login.jsp>Login again</a>");
                   }
                   catch(Exception e)
                   {
                       out.println("password not change"+e);
                   }
                 }
                 else
                 {
                     out.println("old password not match");
                 }
               }
               else
               {
                   out.println("newpass and connfirm doesnt match");
               }
           }
           catch(Exception e)
           {
               out.println(e);
           }
           
//           out.println(s1oldpass); 
//           out.println(s1newpass); 
//           out.println(s1cnpass); 
          
           %>
    </body>
</html>