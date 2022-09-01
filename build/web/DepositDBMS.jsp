<%@page import="java.awt.Button"%>
<%@include file="DBCON.jsp" %>
<html>
    
    <body>
        <h1>Deposit DBMS</h1>
        <%
            String accountno=request.getParameter("accountno");
            String ref=request.getParameter("ref");
            String date=request.getParameter("date");
            String transid=request.getParameter("transID");
            String amount=request.getParameter("depamount");
            
            session.setAttribute("accountno",accountno);
            session.setAttribute("ref",ref);
            session.setAttribute("date",date);
            session.setAttribute("transid",transid);
            session.setAttribute("amount",amount);
            
            out.println(accountno);
            out.println(ref);
            out.println(date);
            out.println(transid);
            out.println(amount);
            
            try
            {
                String viewquery="select * from transactionbank";
                Statement stmt=con.createStatement();
                ResultSet rs= stmt.executeQuery(viewquery);
                int lastbal=0;
                while(rs.next())
                {
                    lastbal=rs.getInt(7);
                }
                
                String cashdepquery="insert into transactionbank value(?,?,?,?,?,?,?);";
                
                PreparedStatement pst = con.prepareStatement(cashdepquery);
                
                pst.setString(1,accountno);
                pst.setString(2,ref);
                pst.setString(3,date);
                pst.setString(4,transid);
                pst.setInt(5,Integer.parseInt(amount));
                pst.setInt(6,0);
                pst.setInt(7,lastbal+Integer.parseInt(amount));
                
                pst.executeUpdate();
                out.println("Transferred..");
                
                
                String viewquerycustomer="select * from "+accountno;
                Statement stmt2=con.createStatement();
                ResultSet rs2= stmt2.executeQuery(viewquerycustomer);
                int custlastbal=0;
                while(rs2.next())
                {
                    custlastbal=rs2.getInt(7);
                }
                
                String cashdepqueryincustomer="insert into "+accountno+" values(?,?,?,?,?,?,?);";
                
                PreparedStatement pst2 = con.prepareStatement(cashdepqueryincustomer);
                
                pst2.setString(1,accountno);
                pst2.setString(2,ref);
                pst2.setString(3,date);
                pst2.setString(4,transid);
                pst2.setInt(5,Integer.parseInt(amount));
                pst2.setInt(6,0);
                pst2.setInt(7,custlastbal+Integer.parseInt(amount));
                
                pst2.executeUpdate();
                out.println("Transferred into customer table..");
            }
            catch(Exception e)
            {
                out.println("transaction failed"+e);
            }
            
            %>
         
            <form action="DepositReceipt.jsp" method="post">
                <input type="submit" name="b1" value="see deposit receipt">
            </form>
           
           
    </body>
</html>
