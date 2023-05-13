


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

  
    if(isNaN(document.F1.minq.value))
   {
       alert("min quanty of order field must  be  number & can't be null")
	   document.F1.minq.value=""
	   document.F1.minq.focus()
	   return false
   }
    if(isNaN(document.F1.orderq.value))
   {
       alert("Ordering Qty field must  be  number & can't be null")
	   document.F1.orderq.value=""
	   document.F1.orderq.focus()
	   return false
   }

    if(isNaN(document.F1.netcost.value))
   {
       alert("Netcost field must  be  number & can't be null")
	   document.F1.netcost.value=""
	   document.F1.netcost.focus()
	   return false
   }
    if(!isNaN(document.F1.usname.value))
   {
       alert("username field must  be character & can't be null")
	   document.F1.usname.value=""
	   document.F1.usname.focus()
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

 <table width="960" border="0" cellspacing="10" cellpadding="0" align="center">
  <tr align="justify">
     <td valign="top" width="220px">
    	<img src="images/hioxindia-pharmacy_08.jpg" alt="" border="0" /> <br /> 
      <h1>Tele-Consultancy</h1>
      	<p>Book a call for tele-consultancy now.(Coming up)</p>
    	<p align="right"><a href="#" class="more">View More</a></p>
    </td> <td valign="top">
    	
				
    	<% 
%>
<table width="300" border="0" cellspacing="10" cellpadding="0" align="center"><%
        
        String ProdCode=request.getParameter("ProdCode");
        String productname=request.getParameter("productname");

   
        
        String unit=request.getParameter("noOfUnits");
        double unitno=Double.parseDouble(unit);

        String distributor = request.getParameter("preferedDistributor");
        String mode = request.getParameter("r1");
        
		//String choice = request.getParameter("c");
		
        

	    
		
	    
		try 
		{
		    Connection con=GetCon.getCon();
			PreparedStatement ps=con.prepareStatement("insert into CUSTORDER values(?,?,?,?,?,?)");
	         int nextvalue=GetCon.getPrimaryKey();
	             ps.setInt(1,nextvalue);
		
	 	           // ps.setInt(1,8);
           			ps.setString(2,ProdCode);
           			ps.setString(3,productname);
           			ps.setDouble(4,unitno);
           			ps.setString(5,distributor);
           			ps.setString(6,mode);
 
           			ResultSet rs=ps.executeQuery();
           			//out.print("<tr>your Item has been Added </tr>");
           			
        			
           		    
           			if(rs.next()){
           				
			out.print("your Item has been Added");
			//out.println("<br><a href='distributer.jsp'> Go To add products </a><br>");

			
			%><jsp:forward page="order.jsp" />
			</table>	
			
			
			<% 
				
			}
           			
		   else{
		  
			out.print("sorry try later");
			
			%>
			<jsp:forward page="index.php"></jsp:forward> 
			<% 
			
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	
		%></table><%
%>

<%@ page import="java.sql.*"%>
<%@ page import="java.io.*" %>
<%@ page import="javax.servlet.*"%>
<%@ page import="com.kingbomm.*" %>
  
						
		
    <td valign="top">
    	<img src="images/hioxindia-pharmacy_10.jpg" alt="" border="0" />
        <h1>Blood Test</h1>
      <p>Get your blood tested at your doorstep.(Coming soon)</p>
        <p align="right"><a href="#" class="more">View More</a></p>
    </td>
    <td valign="top">
    	<img src="images/hioxindia-pharmacy_12.jpg" alt="" border="0" />
        <h1>Eye Checkup</h1>
      <p>Get your eyesights checked at the comfort of your house.(Coming soon)</p>
        <p align="right"><a href="#" class="more">View More</a></p>
    </td>
    
  </tr>
  <tr><td colspan="4" style="border-bottom:1px solid #CCCCCC;"></td></tr>
</table>


<div id="content">
<table width="960" border="0" cellspacing="0" cellpadding="0">
  <tr align="justify">
    <td width="200" valign="top">
    	<img src="images/hioxindia-pharmacy_19.jpg" alt="" border="0" />    </td>
    <td width="760" valign="top">
    	<h1>Welcome to JustMedi Pharmaceutical Platform </h1>
        
		<p>Welcome to JustMedi, your ultimate destination for all your pharmaceutical needs! At JustMedi, we understand the importance of convenient access to high-quality medications and healthcare products. Our user-friendly online pharmacy platform offers a wide range of medications, supplements, personal care items, and much more, all delivered right to your doorstep. Whether you're looking for prescription medications or over-the-counter remedies, we've got you covered. With a team of experienced pharmacists, stringent quality control measures, and a commitment to exceptional customer service, we strive to ensure your health and well-being are our top priorities. Say goodbye to long queues and tedious searches; let JustMedi be your trusted companion on your journey to wellness. Explore our extensive product selection, enjoy competitive prices, and experience the convenience of a pharmacy at your fingertips. Welcome to a healthier, happier you with JustMedi!</p>
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
