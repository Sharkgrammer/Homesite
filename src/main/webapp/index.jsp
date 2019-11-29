<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

    <head>
        <%@include file="css.jsp" %> 
    </head>

    <body>

        <%@include file="header.jsp" %> 
        <div style="padding-bottom: 100px"></br></div>

        <div class="container-fluid" style="display:none">
            <div class="row">
                <div class="col-sm-1" ></div>

                <div class="col-sm-10 content border border-dark rounded center text-center">
                    <div style="padding:20px;">
                       <h1>Hello Shark</h1>
					   </div>
                </div>

                <div class="col-sm-1"></div>
            </div>
        </div>

        <%@include file="footer.jsp" %>

    </body>

</html>