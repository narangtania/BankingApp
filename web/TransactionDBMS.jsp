<%@include file="DBCON.jsp" %>
<%@include file="Transaction.jsp" %>
<html>
    <body>
        <h1>Transaction DBMS</h1>
        
        <%
        String choice=request.getParameter("choice");
            try {
                
                String viewquery="";
                
                if(choice.equalsIgnoreCase("All"))
                {
                    viewquery = "select * from transactionbank";
                }
                
                else if(choice.equalsIgnoreCase("Account Number"))
                {
                    String ac = request.getParameter("txt1");
                    viewquery = "select * from transactionbank where accountno='"+ac+"'";
                }
                else if(choice.equalsIgnoreCase("Date of Transaction"))
                {
                    String dc = request.getParameter("txt1");
                    viewquery = "select * from transactionbank where dotrans='"+dc+"'";
                }
                else if(choice.equalsIgnoreCase("Transaction ID"))
                {
                    String ic = request.getParameter("txt1");
                    viewquery = "select * from transactionbank where transid='"+ic+"'";
                }
                
                
                Statement st = con.createStatement();
                ResultSet rs = st.executeQuery(viewquery);
                
                while(rs.next()) {
                    out.println(" " + rs.getString(1));
                    out.println(" " + rs.getString(2));
                    out.println(" " + rs.getString(3));
                    out.println(" " + rs.getString(4));
                    out.println(" " + rs.getString(5));
                    out.println(" " + rs.getString(6));
                    out.println(" " + rs.getString(7));
//                    out.println(" " + rs.getString(8));
//                    out.println(" " + rs.getString(9));
//                    out.println(" " + rs.getString(10));
                    out.println("<br>");
                    
                }
                
            } catch(Exception e) 
            {
                
            }
        %>
    </body>
</html>
