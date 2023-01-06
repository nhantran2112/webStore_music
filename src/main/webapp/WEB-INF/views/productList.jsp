<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

    <link rel="stylesheet" href="<c:url value="/resources/css/ecommerce-price-men.css"/>">
    <script src="<c:url value="/resources/js/ecommerce-price-men.js"/>"></script>
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

<!--middle-->
<div class="container-fluid mt-5 pt-5" style="margin-bottom: 50px; margin-top: 50px">
    <div class="row">
        <div class="container large-right-sider">
            <div class="row pt-5 hide-front-page">
                <!--loop all item-->
                <c:forEach items="${products}" var="products">
                    <div class="col-xl-3 col-lg-4 col-md-4 col-sm-6  text-center">
                        <a href="<spring:url value="/productList/viewProduct/${products.productId}"/>"><img
                                src="<c:url value="/resources/images/${products.productId}.png"/>" class="img-men"
                                data-aos="fade-up"
                                style="border-radius:20px;height:250px;width: 250px"></a>
                        <a href="<spring:url value="/productList/viewProduct/${products.productId}"/>"><span
                                class="image-lable"
                                data-aos="fade-up">${products.productName}<br>$${products.productPrice}</span></a>
                    </div>
                </c:forEach>
            </div>
        </div>
    </div>
</div>

<%@include file="/WEB-INF/views/templates/footer.jsp" %>

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

