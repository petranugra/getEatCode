<%-- 
    Document   : view_EditProfile_Foodhunter
    Created on : Apr 27, 2016, 12:12:21 AM
    Author     : Putra
--%>

<%@page import="Connection.DatabaseConnection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<title>GetEat! | Profile Food Hunter</title>
<!-- Custom Theme files -->
<link href="css_foodhunter/styleProfile.css" rel="stylesheet" type="text/css" media="all"/>


<!-- Custom Theme files -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
<meta name="keywords" content="Flat Reviews Widget Responsive, Login form web template, Sign up Web Templates, Flat Web Templates, Login signup Responsive web template, Smartphone Compatible web template, free web designs for Nokia, Samsung, LG, sony ericsson, Motorola web design" />
<link href='//fonts.googleapis.com/css?family=Droid+Sans:400,700' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Titillium+Web:400,200,200italic,300,300italic,400italic,600,600italic,700,700italic,900' rel='stylesheet' type='text/css'>
<script src="js_foodhunter/jquery.js" type="text/javascript"></script>
<script type="text/javascript" src="js_foodhunter/script.js"></script>
</head>
<body>
	<div class="head">
		<div class="head-text">
			<h1>Profile Food Hunter</h1>
		</div>
		<div class="login">
			<div class="header">
				<div class="text">
                                    
                                    <%
                                        HttpSession s= request.getSession(true);
                                        
                                        
                Connection conn = DatabaseConnection.getDBConnection();
                Statement statement = conn.createStatement();
                if(s.getAttribute("Username")!= null){
//                String que1 = "select * from foodhunter where email='"+s.getAttribute("email")+"'";
                String que1 ="SELECT * FROM foodhunter f, member m WHERE m.username='"+s.getAttribute("Username")+"'";
                ResultSet res = statement.executeQuery(que1);
                while (res.next()) {
            %>
                                    <img src="images_foodhunter/foto.jpg" alt="" height="90" width="90"/>
					<div class="text-left">
					<h2>Food Hunter</h2>
					<p><%=res.getString("nama")%></p>
					</div>
				</div>
			</div>
			<div class="sap_tabs">	
				     <div id="horizontalTab" style="display: block; width: 100%; margin: 0px;">
						  <ul class="resp-tabs-list">
                                                     <li><span><a href="View_Home_Foodhunter.jsp">Home</a></span></li>
                                                      <li><span><a href="View_ListReview_FoodHunter.jsp">List Review</a></span></li>
                                                      <li><span><a href="View_income.jsp">Income</a></span></li>
							 
						  </ul>				  	 
							<div class="resp-tabs-container">
							    <h2 class="resp-accordion resp-tab-active" role="tab" aria-controls="tab_item-0"><span class="resp-arrow"></span>Product Description</h2><div class="tab-1 resp-tab-content resp-tab-content-active" aria-labelledby="tab_item-0" style="display:block">
									<div class="facts">
									      <div class="review">
									      <!-- Edit profile yang nantinya setelah klik tombol Edit akan mengubah profile Eaters tersebut di database -->
					<div class="review-top">
                                           <form action="ServletEditProfile" method="get">
                                               User Name
                                               <input type="text" value="<%=res.getString("nama")%>" id="Nama" style="width:500px;" name="nama">
						<br>
						<br>
                                                Sosial Media
						<input type="text" value="<%=res.getString("SocialMedia")%>" id="Alamat" style="width:500px"name="sm">
						<br>
						<br>
                                                Email
                                                <br>
						<input type="text" value="<%=res.getString("email")%>" id="Email" style="width:500px"name="email">
						<br>
						<br>
                                                Password
						<input type="text" value="<%=res.getString("password")%>" id="Password" style="width:500px"name="password">
						<br>
						
                                               
<center>
    <button type="submit" class="log-btn" >Edit</button>
     </center>
                                           </form>
     <% }
                
                }
            %>
            
            <% if(request.getAttribute("s") != null){
               if(request.getAttribute("s").equals("berhasil")){
            %>            
            <script>
 {
    alert("Edit Berhasil");
}
</script>
                                    <%}
            else{%>
            <script>
 {
    alert("Edit Gagal");
}
</script>
            <% //request.getSession().invalidate();%>
            <%}}%>

    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

        <script src="js/index.js"></script>
		<script>
		$(document).ready(function() {		
		
		</script>




					</div>
					
				</div>
							     </div>	
							    	</div>
							      <h2 class="resp-accordion" role="tab" aria-controls="tab_item-1"><span class="resp-arrow"></span>Additional Information</h2><div class="tab-1 resp-tab-content" aria-labelledby="tab_item-1">
									<div class="facts">
									      <div class="review">
					
	<script src="js_foodhunter/easyResponsiveTabs.js" type="text/javascript"></script>
		    <script type="text/javascript">
			    $(document).ready(function () {
			        $('#horizontalTab').easyResponsiveTabs({
			            type: 'default', //Types: default, vertical, accordion           
			            width: 'auto', //auto or any width like 600px
			            fit: true   // 100% fit in a container
			        });
			    });
			   </script>	

<!--	<div class="footer">
		<p>&copy; © 2016 GetEat!. All Rights Reserved</a> </p>
	</div>-->
</body>
</html>
