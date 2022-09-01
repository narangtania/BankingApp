<%@include  file ="DBCON.jsp" %>

<html>
    <body>
        <h1>View Customer DBMS</h1>
        <%
          String accno = (String)session.getAttribute("accountno");
        %>
        <%
            String choice = request.getParameter("choice");
            try                
            {
                String updatepassquery ="";
                if(choice.equalsIgnoreCase("name"))
                {
                    String name = request.getParameter("txt1");
                    updatepassquery ="update account set cname='" +name +"'where accno='" +accno+"'";
                }
                if (choice.equalsIgnoreCase("gender"))
                {
                    String gender = request.getParameter("txt1");
                    updatepassquery = "update account set gender='" +gender +"'where accno='" +accno+"'";
                }
                if (choice.equalsIgnoreCase("DOB"))
                {
                    String dob = request.getParameter("txt1");
                    updatepassquery = "update account set dob='" +dob +"'where accno='" +accno+"'";
                }
                if (choice.equalsIgnoreCase("Address1"))
                {
                    String address = request.getParameter("txt1");
                    updatepassquery = "update account set address='" + address +"'where accno='" +accno+"'";
                }
                if (choice.equalsIgnoreCase("Contactno"))
                {
                    String mobile = request.getParameter("txt1");
                    updatepassquery = "update account set mob='" +mobile +"'where accno='" +accno+"'";
                }
                if (choice.equalsIgnoreCase("sques"))
                {
                    String sques = request.getParameter("txt1");
                    updatepassquery = "update account set sques='" +sques +"'where accno='" +accno+"'";
                }
                if (choice.equalsIgnoreCase("answer"))
                {
                    String sans = request.getParameter("txt1");
                    updatepassquery = "update account set sans='" +sans +"'where accno='" +accno+"'";
                }
                PreparedStatement pst = con.prepareStatement(updatepassquery);
                pst.executeUpdate();
                out.println("Data updated successfully");
            }
            catch(Exception e)
            {
                out.println("Data not found" + e);
            }
                    
        %>
    </body>
</html>
