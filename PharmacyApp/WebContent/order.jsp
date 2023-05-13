

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>JustMedi- Your Medical Buddy</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
function ctck()
{
var sds = document.getElementById("dum");
if(sds == null){alert("You are using a free package.\n You are not allowed to remove the tag.\n");}
}
</script>


<head>
<SCRIPT LANGUAGE="JavaScript">
function dil(form)
{
   for(var i=0; i<form.elements.length; i++)
   {
		if(form.elements[i].value == "")
		{
		   alert("Fill out all Fields")
		   document.F1.productname.focus()
		   return false
		}
   }
 if(!isNaN(document.F1.productname.value))
   {
       alert("productname  must  be  char's & can't be null")
	   document.F1.productname.value=""
	   document.F1.productname.focus()
	   return false
   }

    if(isNaN(document.F1.noOfUnits.value))
   {
       alert("Netcost field must  be  number & can't be null")
	   document.F1.noOfUnits.value=""
	   document.F1.noOfUnits.focus()
	   return false
   }
    if(!isNaN(document.F1.username.value))
    {
        alert("productname  must  be  char's & can't be null")
 	   document.F1.username.value=""
 	   document.F1.username.focus()
 	   return false
    }
   

   return true   
   }
</SCRIPT>
<div id="header">
	<div id="navigation">
    	<ul>
        	<li><a href="index.jsp">Home</a></li>
            <li><a href="about.jsp">About Us</a></li>
            <li><a href="admin.jsp">ADMINISTRATOR </a></li>
            <li><a href="customer.jsp">CUST0MER</a></li>
            <li><a href="contactus.jsp">Contact Us</a></li>
        </ul>	
    </div>
</div>
<table width="960" border="0" cellspacing="10" cellpadding="0"
		align="center">
		<%
			
		%>


		<tr align="justify">
			<td valign="top">
				<%-- <table cellspacing="10" cellpadding="8">	--%> <%
 	
 %>
				<table>
					<%
						//out.print("<td><tr><a href='disselectord.jsp'>Click to select your order</a></tr></td>");

					try {
						Connection con = GetCon.getCon();
						PreparedStatement ps = con.prepareStatement("Select * from DISTRIBUTERPROD");
						//ps.setString(1,uname);
						ResultSet rs = ps.executeQuery();

						//out.print("<td><a href='disselectord.jsp'>Click to select your order</a></td>");

						out.print(
						"<tr><th>id</th><th>prodcode</th><th>productname</th><th>Manufacturing Date</th><th>Manufacture detail</th><th>Expiry</th><th>Minq</th><th>Totalq</th><th>cost/prod</th><th>Username</th></tr>");
						while (rs.next()) {
							int id = rs.getInt(1);
							session.setAttribute("id", id);
							out.print("<tr>");
							out.print("<td>" + rs.getString(1) + "</td>");
							out.print("<td>" + rs.getString(2) + "</td>");
							out.print("<td>" + rs.getString(3) + "</td>");
							out.print("<td>" + rs.getString(4) + "</td>");
							out.print("<td>" + rs.getString(5) + "</td>");
							out.print("<td>" + rs.getString(6) + "</td>");
							out.print("<td>" + rs.getDouble(7) + "</td>");
							out.print("<td>" + rs.getDouble(8) + "</td>");
							out.print("<td>" + rs.getDouble(9) + "</td>");
							out.print("<td>" + rs.getString(10) + "</td>");

							//out.print("<td>" DeleteServlet.Del`"</td>");

							out.print("</tr>");
						}

						//out.print("</table>");
						//out.print("<table>");

						//out.print("</table>");
					} catch (SQLException e) {
						e.printStackTrace();
					}
					%>
				</table>
				<%
					
				%> <%@ page import="java.sql.*"%> <%@ page
					import="java.io.*"%> <%@ page
					import="javax.servlet.*"%> <%@ page
					import="com.kingbomm.*"%>

<table width="960" border="0" cellspacing="10" cellpadding="0" align="center">
  <tr align="justify">
     <td valign="top">
			
				<form name=F1 onSubmit="return dil(this)" action="orderDetails.jsp" >
				  <table cellspacing="5" cellpadding="3">	
				  <TR>
	<TD> Product Code : </TD> <TD> <SELECT NAME="ProdCode"> 
									<option value=a1> APLG0001
									<option value=a2> APLG0002
									<option value=a3> APLG0003
									<option value=a4> APLG0004
									<option value=a5> APLG0005

									
									</SELECT> 
							  </TD>
	
</TR>
				
					<tr><td>Product Name :</td><td> <input type="text" name="productname"/></td></tr>
					<tr><td>No Of Units :</td><td> <input type="number" name="noOfUnits"/></td></tr>
					<tr><td>Prefered Distributor :	</td><td> <input type="text" name="preferedDistributor"/></td></tr>
					<tr><td>Username : </td><td> <input type="text" name="username"/></td></tr>
					
					
<TR><TD>  ModeofPayment: </TD> 
	
			<TD> Cash  <INPUT TYPE="radio" NAME="r1" VALUE="cash"></TD>  			
	
			<TD> D.D   <INPUT TYPE="radio" NAME="r1" VALUE="DD"></TD>
 
			<TD> Check  <INPUT TYPE="radio" NAME="r1" VALUE="check"></TD>
</TR>

	
					<tr><td></td><td><input type="submit" value="ADD TO CART"/>
					
					<INPUT TYPE=RESET VALUE="CLEAR"></td></tr>
					<td><a href="getCustomerUsername.jsp">Click To View Orders</a></td>
					</table>
               		</form>
    
  </tr>

</table>


<div id="content">
<table width="960" border="0" cellspacing="0" cellpadding="0">
  <tr align="justify">
    <td width="200" valign="top">
    	<img src="images/hioxindia-pharmacy_19.jpg" alt="" border="0" />    </td>
    <td width="760" valign="top">
    	<h1>Welcome to Pharmaceutical Company Template</h1>
        <p>This is free Pharmaceutical Company Template for your online website, blog or web page which is under Health and Medicine category. Anyone wants good, professional, template for their pharmacy, drug store, medical store then this template would be the best one. This free pharmaceutical company template is designed by professional designers to make your task much easier to customize it.</p><br />

<p>There are many other template categories like Arts, Agriculture, Computers, Satellite, Cars, Finance, Nature, Music, Personal Website, Religious, Fashion, Furniture, Holiday, Travel, Night club are available in this site. Have a look at the collection of HTML templates, pick the right one, preview and download it easily.</p>
    </td>
  </tr>
</table>
</div>

<div id="footer">
  <div id="footer_1">
   		<ul>
        	<li><a href="#"></a></li>
            <li><a href="#"></a></li>
            <li><a href="#"></a></li>
            <li><a href="#"></a></li>
            <li><a href="#"></a></li>
        </ul>	<br />
    <span id="design">Designed by <a id="dum" href="#" target="_blank">The Knights of AOT under the guidance of Prof. Subhankar Roy</a></span>
    <script type="text/javascript">
    document.onload = ctck();
    </script>
  </div>
</div>
</body>
</html>
