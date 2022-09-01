<%@include file="DBCON.jsp" %>
<html>
    
    <body>
        <h1>Request CheckBook Page</h1>
        <form >
            <%
                out.println("Account Number:"+session.getAttribute("accountno"));
                %>
                <br>
                No.of Cheque Books:<input type="text" name="txt1"><br>
                No.of Cheque leaves:<input type="text" name="txt2"><br>
                <%
               String viewquery = "select * from account where accno='"+session.getAttribute("accountno")+"';";  
               
                
                Statement st = con.createStatement();
                ResultSet rs = st.executeQuery(viewquery);
                
                while(rs.next()) {
                    out.println("Delivery Address: " + rs.getString(5));
                    
                }
                //out.println("Delivery Address: "+session.getAttribute("Address"));
                %>
                <br>
                <input type="checkbox" name="b2">I agree to terms and conditions<br>
                 <%
            if(request.getParameter("b2")!=null)
            {
             response.sendRedirect("RequestCheckbookDBMS.jsp");
            }
        %>
         <input type="submit" name="b1" value="confirm">

                
               
        </form>
    </body>
</html>
