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

<!--middle part start-->
<div class="container mt-5 pt-4 hide-for-tablate">
    <div class="row pt-5">
        <div class="col-1">
            <div class="row pt-3 pb-2">
                <div class="col-xl-12 text-center">
                    <a href="#/"><img src="<c:url value="/resources/images/${product.productId}.png"/>" height="50px" width="100%" class="zooming"></a>
                </div>
            </div>
        </div>
        <div class="col-5 text-center zooming-open-head wm-zoom-container my-zoom-1">
            <div class="wm-zoom-box">
                <img src="<c:url value="/resources/images/${product.productId}.png"/>" height="400px" width="405px" class="wm-zoom-default-img"
                     alt="alternative text" data-hight-src="for-each-image-1.jpg">
            </div>
        </div>

        <div class="col-5">
            <div class="row">
                <div class="col-12 pt-3">
                    <p style="font-size:25px;font-weight:600">${product.productName}</p>
                </div>
                <div class="col-12 pl-5">
                    <p style="font-weight:600;font-size:20px;"> Price:<span style="color:red">$${product.productPrice}</span></p>
                </div>
                <div class="col-12 pl-5">
                    <p style="font-weight:600;font-size:20px;">size:
                        <span style="border:1px solid;padding:1% 3%" class="ml-3">M</span>
                        <span style="border:1px solid;padding:1% 4%" class="ml-2">L</span>
                        <span style="border:1px solid;padding:1% 3%" class="ml-2">XL</span>
                    </p>
                </div>
                <div class="col-12">
                    <p>${product.productDescription}</p>
                </div>
            </div>
        </div>
    </div>
    <div class="row pt-2">
        <div class="col-6">
            <span style="visibility: hidden;">hello user</span>
        </div>
        <div class="col-6 pl-5 text-white">
            <a href="#" style="color:white"><span
                    style="width:30%;border:1px solid;padding:2% 5%;text-transform: uppercase;font-size:15px;font-weight:600;background-color:rgb(255, 174, 0);border-radius:10px;"><i
                    class="fa fa-shopping-cart" aria-hidden="true"></i><span class="ml-2">add to card</span></span></a>
            <a href="#" style="color:white"><span
                    style="width:30%;border:1px solid;padding:2% 5%;text-transform: uppercase;font-size:15px;font-weight:600;background-color:orangered;border-radius:10px;"
                    class="ml-3"><i class="fa fa-bolt" aria-hidden="true"></i><span class="ml-2"> buy now</span></span></a>
        </div>
    </div>
    <div class="rows pb-5">
        <div class="col">
            <span style="visibility:hidden;">hello user</span>
        </div>
    </div>
</div>
<!--middle part end-->

<div class="container mb-5">
    <div class="row">
        <div class="col-sm-12 text-center pb-4 pt-4">
            <span style="text-transform: uppercase;font-weight: 700;font-size:30px;" data-aos="zoom-in">similar</span>
        </div>
    </div>
    <div class="row">
        <!--                loop 4 similar product-->
        <c:forEach items="${productSimilar}" var="productSimilar">
            <div class="col-xl-3 col-lg-4 col-md-6 col-sm-12">
                <div class="container text-center" height="250px" width="250px" style="overflow:hidden">
                    <a href="<spring:url value="/productList/viewProduct/${productSimilar.productId}"/>"><img
                            src="<c:url value="/resources/images/${productSimilar.productId}.png"/>" class="img-men"
                            data-aos="fade-up" style="border-radius:20px;"><br></a>
                    <a href="<spring:url value="/productList/viewProduct/${productSimilar.productId}"/>" ><span
                            class="image-lable"
                            data-aos="fade-up">${productSimilar.productName}<br>$${productSimilar.productPrice}</span></a>
                </div>
            </div>
        </c:forEach>
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


