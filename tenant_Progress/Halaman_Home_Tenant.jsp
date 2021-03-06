<%-- 
    Document   : Halaman_Home_Tenant
    Created on : Apr 4, 2016, 10:41:16 PM
    Author     : tommynmanoppo
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <title>GetEat!</title>
        <link href="css/styleProfile.css" rel="stylesheet" type="text/css" media="all"/> 
        <link href="css/styleMenu.css" rel="stylesheet" type="text/css" media="all"/>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <!--<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>-->
        <link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
        <link href="css/style.css" rel='stylesheet' type='text/css' />
        <link href="css/table.css" rel='stylesheet' type='text/css' />
<!--        <script src="js/jquery.min.js"></script>-->
        
<!--        <script src="js/underscore-min.js"></script>
        <script src= "js/moment-2.2.1.js"></script>
        <script src="js/clndr.js"></script>
        <script src="js/site.js"></script>-->
       
        <!--End Calender-->
    </head>
    <body>
        <!--content-starts-->
        <div class="content">
            <div class="wrap">
                <div class="content-head">
                    <h1>GetEat!</h1>
                </div>
<!--                 link to tenant home, profie editing and promotion page-->
                <div class="banner ban1">
                <div class="container">
                    <div align="center" class="top-menu">
                    <span class="menu"> alt=""/> </span>
                        <ul>
                            <li><a  href="index.html">home</a></li>
                            <li><a  href="about.html">about</a></li> 
                            <li><a  href="menu.html" class="active">menus</a></li>
                            <li><a  href="gallery.html">gallery</a></li>
                            <li><a  href="events.html">discount</a></li> 
                            <li><a  href="contact.html">contact</a></li>
                        </ul>
                       
                                    
                             <script>
                             $("span.menu").click(function(){
                             $(".top-menu ul").slideToggle("slow" , function(){
                             });
                             });
                             </script>
<!--                         //script for menu -->
                    
                   </div>
                </div>
                    </div>
                <br>
                <br>
                
                
                <!-- logout button -->
                <h2 font weight="normal" text align="right" style="color:red"><img src="images/profiledefault.jpg" alt="" /> Welcome,  <input type="submit" name="logout" value="logout"> </h2> 

                <br>

                <div class="content-main">
                    <div class="menu-offer">
                        <div class="container">
                            <div class="menu-head">
                                <center><h3 font size="14" font weight="normal" style="color:red">Your List Review</h3></center>
                                <center><p>This is all about your foods history reviews from foodhunters</p>
                                    <font size="2" color ="red"> *Review isn't relate with admin </font>
                                </center>
                            </div>
                            <br>
                            <br>
                          


<!-- Description -->
<h3 class="description">
  <table border=1>
        <thead>
            <tr>
                <th>Review Id</th>
                <th>Tenant Id</th>
                <th>useful</th>
                <th>Funny</th>
                <th>Comment</th>
                <th>Status</th>
                
                <th colspan=2>Action</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${review}" var="rev">
                <tr>
                    
                    
                    <td><c:out value="${rev.idReview}" /></td>
                    <td><c:out value="${rev.idtenant}" /></td>
                    <td><c:out value="${rev.useful}" /></td>
                    <td><c:out value="${rev.funny}" /></td>
                    <td><c:out value="${rev.comment}" /></td>
                    <td><c:out value="${rev.status}" /></td>
                   <td><a href="tenantServlet?action=edit&idtenant=<c:out value="${rev.idtenant}"/>">Update</a></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</h3>

<!-- Table demo -->
<!--<div class="box-table">
<script src="js/table.js"></script>
</div>-->




                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!--footer-starts-->
        <div class="footer">
            <div class="container">
                <div class="footer-text">
                    <p>© 2016 GetEat! </p>
                </div>
            </div>
        </div>
        <!--footer-end-->
    </body>
</html>

