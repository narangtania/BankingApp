<%@include file="DBCON.jsp" %>
<html>
    
    <body>
        <h1>Withdraw DBMS</h1>
        <%
            //String accountno=request.getParameter("accountno");
            String ref=request.getParameter("ref");
            String date=request.getParameter("date");
            
            String amount=request.getParameter("amount");
            
//            out.println(transid);
//            out.println(accountno);
//            out.println(amount);
//            out.println(date);
//            out.println(amount);
            
            int accno=(int)Math.floor(Math.random()*(9900-4000)+9900);
            
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
                String viewquerytest = "select * from transactionbank";
                Statement stmttest = con.createStatement();
                ResultSet rstest = stmttest.executeQuery(viewquerytest);



               String transIDold = "";



               while(rstest.next()) {
                    transIDold = rstest.getString(4);
                }



               String temp = transIDold.replace("T", "");
                int i = Integer.parseInt(temp);
                i = i + 1;
                String transid = Integer.toString(i);
                transid = "T" + transid;
                
                PreparedStatement pst = con.prepareStatement(cashdepquery);
                
                pst.setString(1,accountno);
                pst.setString(2,ref);
                pst.setString(3,date);
                pst.setString(4,transid);
                pst.setInt(5,0);
                pst.setInt(6,Integer.parseInt(amount));
                pst.setInt(7,lastbal-Integer.parseInt(amount));
                
                pst.executeUpdate();
                out.println("Withdraw Successfull..");
                
                
                String viewquerycust="select * from "+accountno;
                Statement stmt2=con.createStatement();
                ResultSet rs2= stmt2.executeQuery(viewquerycust);
                int custlastbal=0;
                while(rs2.next())
                {
                    custlastbal=rs2.getInt(7);
                }
                
                String cashdepquerycust="insert into "+accountno+" value(?,?,?,?,?,?,?);";
                
                PreparedStatement pst2 = con.prepareStatement(cashdepquerycust);
                
                pst2.setString(1,accountno);
                pst2.setString(2,ref);
                pst2.setString(3,date);
                pst2.setString(4,transid);
                pst2.setInt(5,0);
                pst2.setInt(6,Integer.parseInt(amount));
                pst2.setInt(7,custlastbal-Integer.parseInt(amount));
                
                pst2.executeUpdate();
                out.println("Withdraw Successfull..");
            }
            catch(Exception e)
            {
                out.println("Withdraw failed"+e);
            }
            
            %>
    </body>
</html>
