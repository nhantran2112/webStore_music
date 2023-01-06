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

    <title>Tee Shirt</title>

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

<%--container--%>
<div class="carousel slide" data-ride="carousel" style="z-index:1">
    <div class="carousel-inner text-center">
        <div class="carousel-item active" style="height:100vh">
            <div style="height:100vh;width:100vw" class="text-right pr-5">
                <div class="container pt-4">
                    <div class="row mt-3 pt-5">
                        <div class="col-12 text-center pt-5">
                            <a href="<c:url value="/productList"/>"><span class="box"><img
                                    src="<c:url value="/resources/images/sale-box.jpg"/>"
                                    height="320px"
                                    style="transform: translateY(10%);"></span></a>
                            <a href="<c:url value="/productList"/>"><img
                                    src="<c:url value="/resources/images/sale-1..png"/>" height="300px"
                                    class="sale-img"></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class='container-fluid pb-3'>
    <div class="row">
        <div class="col text-center">
            <a href="<c:url value="/productList"/>"><span
                    style="font-size:30px;text-transform:uppercase;font-weight:bold"
                    data-aos="zoom-in">popular</span></a>
        </div>
    </div>
</div>
<div class="container-fluid pt-5" style="background-color:white">
    <div class="container">
        <div class="row text-center">

            <!--              loop show 8 products-->
            <c:forEach items="${productsPopular}" var="productsPopular">
                <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 col-12 text-center">
                    <div class="container pl-0" height="250px" width="250px" style="overflow:hidden">
                        <a href="<spring:url value="/productList/viewProduct/${productsPopular.productId}"/>"><img
                                src="<c:url value="/resources/images/${productsPopular.productId}.png"/>"
                                class="img-men" data-aos="fade-up"
                                style="border-radius:20px;"><br></a>
                        <a href="<spring:url value="/productList/viewProduct/${productsPopular.productId}"/>"><span
                                class="image-lable"
                                data-aos="fade-up">${productsPopular.productName}<br>$${productsPopular.productPrice}</span></a>
                    </div>
                </div>
            </c:forEach>
        </div>

        <div class="row mb-1 pb-3">
            <div class="col-12 pb-5 text-center">
                <a href="<c:url value="/productList"/>"><span
                        style="border:3px solid rgb(180, 69, 69);border-radius:10px;padding:1% 2%;background-color:rgb(177, 84, 84);"
                        class="ml-4" data-aos="zoom-in"><span
                        style="font-weight:700;font-size:20px;color:white;text-transform: uppercase;">more</span><span
                        class="pl-3" style="color:white;"><i class="fa fa-arrow-right"
                                                             aria-hidden="true"></i></span></span></a>
            </div>
        </div>
    </div>
</div>

<div class="container-fluid transparent pt-5 pb-5" id="parallax1"
     style="background-image:url('<c:url
             value="/resources/images/desktop.jpg"/>');background-size:cover;background-attachment:fixed;">
    <div class="container sift-couple" height="200px">
        <div class="row">
            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 pt-4 text-center">
                  <span style="font-weight:700;font-size:20px;" data-aos="zoom-in">Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                Vestibulum consequat quam vel diam iaculis consectetur.
                Praesent ac arcu sem. Nulla consectetur magna ac libero
                rutrum malesuada. Class aptent taciti sociosqu ad litora
                torquent per conubia nostra, per</span><br><br><a href="<c:url value="/productList"/>"><span
                    style="font-size:20px;color:rgb(180, 69, 69);font-weight: 800;text-transform: uppercase;"
                    data-aos="zoom-in">choose your wedding dress</span></a>
            </div>
        </div>
    </div>
</div>
<div class="container-fluid mt-5">
    <div class="container pt-3 pb-3">
        <div class="row">
            <div class="col-sm-12 text-center pb-4 pt-4">
                <a href="<c:url value="/productList"/>"><span
                        style="text-transform: uppercase;font-weight: 700;font-size:30px;" data-aos="zoom-in">spring collection</span></a>
            </div>
        </div>
        <div class="row pt-1">
            <div class="col-xl-5 col-lg-5 text-center pt-5 hide-popular">
                <a href="<c:url value="/productList"/>"><img src="<c:url value="/resources/images/model_img.jpg"/>"
                                                             height="400px"
                                                             data-aos="fade-up"><br></a>
            </div>
            <div class="col-xl-7 col-lg-7 col-md-12 col-sm-12 col-12">
                <div class="row">
                    <!--                    Loop 4 man dress-->
                    <c:forEach items="${productsSpring}" var="productsSpring">
                        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12 text-center pt-3">
                            <a href="<spring:url value="/productList/viewProduct/${productsSpring.productId}"/>"><img
                                    src="<c:url value="/resources/images/${productsSpring.productId}.png"/>"
                                    height="200px"
                                    data-aos="fade-up"><br></a>
                            <a href=href="<spring:url value="/productList/viewProduct/${productsSpring.productId}"/>"><span
                                    class="image-lable"
                                    data-aos="zoom-in">${productsSpring.productName}<br>$${productsSpring.productPrice}</span></a>
                        </div>
                    </c:forEach>


                </div>
            </div>
        </div>
        <div class="container pr-5 text-center mt-2 pb-3">
            <div class="row pt-5">
                <div class="col">
                    <a href="<c:url value="/productList"/>"><span
                            style="border:3px solid rgb(180, 69, 69);border-radius:10px;padding:1% 2%;background-color:rgb(177, 84, 84);"
                            class="ml-4" data-aos="zoom-in"><span
                            style="font-weight:700;font-size:20px;color:white;text-transform: uppercase;">more</span><span
                            class="pl-3" style="color:white;"><i class="fa fa-arrow-right"
                                                                 aria-hidden="true"></i></span></span></a>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="container-fluid mt-4 pt-2">
    <div class="container pt-4 pb-4">
        <div class="row">
            <div class="col-sm-12 text-center pb-4">
                <a href="<c:url value="/productList"/>"><span
                        style="text-transform: uppercase;font-weight: 700;font-size:30px;" data-aos="zoom-in">summer collection</span></a>
            </div>
        </div>
        <div class="row">
            <div class="col-xl-5 col-lg-5 text-center pt-5 hide-popular">
                <a href="<c:url value="/productList"/>"><img src="<c:url value="/resources/images/model_img_1.jpg"/>"
                                                             height="400px" data-aos="fade-up"><br></a>
            </div>
            <div class="col-xl-7 col-lg-7 col-md-12 col-sm-12 col-12">
                <div class="row">
                    <!--                    loop 4 ladies dress-->
                    <c:forEach items="${productsSummer}" var="productsSummer">
                        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12 text-center pt-3">
                            <a href="<spring:url value="/productList/viewProduct/${productsSummer.productId}"/>"><img
                                    src="<c:url value="/resources/images/${productsSummer.productId}.png"/>"
                                    height="200px"
                                    data-aos="fade-up"><br></a>
                            <a href=href="<spring:url value="/productList/viewProduct/${productsSummer.productId}"/>"><span
                                    class="image-lable"
                                    data-aos="zoom-in">${productsSummer.productName}<br>$${productsSummer.productPrice}</span></a>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
    </div>
    <div class="container pr-5 text-center mt-4 pb-5">
        <div class="row pt-2 pb-3">
            <div class="col">
                <a href="<c:url value="/productList"/>"><span
                        style="border:3px solid rgb(180, 69, 69);border-radius:10px;padding:1% 2%;background-color:rgb(177, 84, 84);"
                        class="ml-4" data-aos="zoom-in"><span
                        style="font-weight:700;font-size:20px;color:white;text-transform: uppercase;">more</span><span
                        class="pl-3" style="color:white;"><i class="fa fa-arrow-right"
                                                             aria-hidden="true"></i></span></span></a>
            </div>
        </div>
    </div>
</div>
<div class="container pt-4 pb-5">
    <div class="row">
        <div class="col-sm-12 text-center">
            <a href="<c:url value="/productList"/>"><span
                    style="text-transform: uppercase;font-weight: 700;font-size:30px;"
                    data-aos="zoom-in">winter collection</span></a>
        </div>
    </div>
</div>
<div class="container-fluid pt-5 pb-3 px-0" id="parallax2"
     style="background-image:url('<c:url
             value="/resources/images/desktop.jpg"/>');background-size:cover;background-attachment: fixed;">
    <div class="container" height="200px">
        <div class="row pt-1">
            <!--            loop 4 baby dress-->
            <c:forEach items="${productsWinter}" var="productsWinter">
                <div class="col-xl-3 col-lg-3  col-md-4 col-sm-6 col-12 pb-3 text-center">
                    <a href="<spring:url value="/productList/viewProduct/${productsWinter.productId}"/>"><img
                            src="<c:url value="/resources/images/${productsWinter.productId}.png"/>"
                            height="200px"
                            style="border-radius:20px;" data-aos="fade-up"><br></a>
                    <a href="<spring:url value="/productList/viewProduct/${productsWinter.productId}"/>"><span
                            class="image-lable"
                            data-aos="zoom-in">${productsWinter.productName}<br>$${productsWinter.productPrice}</span></a>
                </div>
            </c:forEach>
        </div>
    </div>
    <div class="row">
        <div class="col pt-4 pb-5 text-center">
            <a href="<c:url value="/productList"/>"><span
                    style="border:3px solid rgb(180, 69, 69);border-radius:10px;padding:1% 2%;background-color:rgb(177, 84, 84);"
                    class="ml-4" data-aos="zoom-in"><span
                    style="font-weight:700;font-size:20px;color:white;text-transform: uppercase;">more</span><span
                    class="pl-3" style="color:white;"><i class="fa fa-arrow-right" aria-hidden="true"></i></span></span></a>
        </div>
    </div>
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
