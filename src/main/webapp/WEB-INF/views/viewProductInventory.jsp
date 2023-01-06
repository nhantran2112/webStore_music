<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>Free$oul Muzik Store</title>

    <!-- Bootstrap core CSS -->
    <link href="<c:url value="/resources/css/bootstrap.min.css"/>" rel="stylesheet">

    <!-- Table CSS -->
    <link href="<c:url value="/resources/css/main.css"/>" rel="stylesheet">

    <!-- Angular JS -->
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js"></script>
    <!--Carousel CSS -->
    <link href="<c:url value="/resources/css/carousel.css"/>" rel="stylesheet">
    <!-- Carousel
    ================================================== -->

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="<c:url value="/resources/css/ecommerce.css"/>">
    <script src="<c:url value="/resources/js/ecommerce.js"/>"></script>
    <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<!-- NAVBAR
================================================== -->
<body>
<%--header--%>
<%@include file="/WEB-INF/views/templates/header.jsp" %>

<div class="container" style="margin-top: 50px">
    <div class="page-header">
        <c:if test="${pageContext.request.userPrincipal.name!=null}">
            <h4 style="text-align: right">
                Welcome ${pageContext.request.userPrincipal.name} | <a href="<c:url value="/j_spring_security_logout"/>">Logout</a>
            </h4>
        </c:if>
        <h1>Product Details</h1>
        <p class="lead">Get to know your Product in detail!</p>
        <a href="<c:url value="/admin/productInventory"/>" class="btn btn-primary btn-lg"
           data-toggle="tooltip" title="Go Back to Product Inventory Page">Back to Product Inventory</a>
    </div>

    <div class="container">
        <div class="row">
            <div class="col-md-5">
                <%--<img src="#" alt="product image" style="height: 70%; width: 300px "/>--%>
                <img src="<c:url value="/resources/images/${product.productId}.png"/>"
                     alt="image" style="width:100%"/>
            </div>
            <div class="col-md-5">
                <h3>${product.productName}</h3>
                <p>${product.productDescription}</p>
                <p><h4><strong>Price</strong> : ${product.productPrice} USD</h4></p>
                <p><strong>Category</strong> : ${product.productCategory}</p>
                <p><strong>Manufacturer</strong> : ${product.productManufacturer}</p>
                <p><strong>Condition</strong> : ${product.productCondition}</p>
                <p><strong>Units in Stock</strong> : ${product.unitInStock}</p>


            </div>
        </div><!-- Row-->
    </div><!-- container-->
</div>


<%--footer--%>
<%@include file="/WEB-INF/views/templates/footer.jsp" %>


<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="<c:url value="/resources/js/jquery-1.12.3.min.js"/>"><\/script>')</script>
<script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
<script src="https://unpkg.com/aos@next/dist/aos.js"></script>
<script>
    AOS.init({
        once: true,
        duration: 1000,
    });
</script>
</body>

</html>


