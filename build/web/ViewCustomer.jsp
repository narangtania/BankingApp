
<html>

    <body>
        <h1>View Customer page</h1>
      <h3 align="center">View details:
        <form action= "ViewCustomerDBMS.jsp" method="post">
            <select name="choice">
                <option value="ALL">ALL</option>
                <option value="Account Number">Account Number</option>
            </select>
            <input type="text" name="txt1">
            <input type="submit" name="b1" value="view">
            <br>
        </form>
      </h3>
<!--        <h3 align="center">
          <form action="CustomerUpdate.jsp" method="post">
              Enter account number for which you need to update<input type="text" name="txt3"><br>
            Update  <select name="option">
                <option>Customer Name</option>
                      <option>Customer Gender</option>
                      <option>Customer DOB</option>
                      <option>Customer Address</option>
                      <option>Customer Mobile</option>
                      <option>Customer Security Question</option>
                      <option>Customer Security Answer</option>
            </select>
            <input type="text" name="txt2">
            <input type="submit" name="b2" value="Update">
            </h3>-->
        </form>
     
    </body>
</html>
