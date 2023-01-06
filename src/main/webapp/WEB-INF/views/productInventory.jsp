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
                Welcome ${pageContext.request.userPrincipal.name} |
                <a href="<c:url value="/j_spring_security_logout"/>">Logout</a>
            </h4>
        </c:if>

        <h1>Product Inventory</h1>
        <p class="lead">Welcome to the Product Inventory of Free$oul Muzik Store!</p>
        <p style="color:red">${msg}</p>
        <a href="<spring:url value="/admin/productInventory/addProduct"/>" class="btn btn-primary"
           data-toggle="tooltip" title="Click to Add Product to Inventory">Add Product</a>
    </div>

    <table class="table table-striped table-hover">

        <thead>
        <tr class="bg-success">
            <th>Photo Thumb</th>
            <th>Product Name</th>
            <th>Category</th>
            <%--<th>Description </th>--%>
            <th>Price</th>
            <%--<th>Condition </th>--%>
            <th>Status</th>
            <%--<th>Unit in Stock </th>--%>
            <%--<th>Manufacturer </th>--%>
            <th>Info.</th>
            <th>Edit</th>
            <th>Delete</th>
        </tr>
        </thead>
        <c:forEach items="${products}" var="product">
            <tr>
                <td><img src="<c:url value="/resources/images/${product.productId}.png"/>"
                         alt="image" style="width:100%"/></td>
                <td>${product.productName}</td>
                <td>${product.productCategory}</td>
                    <%--<td>${product.productDescription}</td>--%>
                <td>${product.productPrice} USD</td>
                    <%--<td>${product.productCondition}</td>--%>
                <td>${product.productStatus}</td>
                    <%--<td>${product.unitInStock}</td>--%>
                    <%--<td>${product.productManufacturer}</td>--%>
                <td>
                    <a href="<spring:url value="/admin/productInventory/viewProductInventory/${product.productId}"/>"
                       data-toggle="tooltip" title="Click to get Product Details">
                        <span class="glyphicon glyphicon-info-sign"/></a>
                </td>
                <td>
                    <a href="<spring:url value="/admin/productInventory/editProduct/${product.productId}"/>"
                       data-toggle="tooltip" title="Click to Edit Product from Inventory">
                        <span class="glyphicon glyphicon-edit"/></a>
                </td>
                <td>
                    <a href="<spring:url value="/admin/productInventory/deleteProduct/${product.productId}"/>"
                       data-toggle="tooltip" title="Click to Remove Product from Inventory">
                        <span class="glyphicon glyphicon-trash"/></a>
                </td>
            </tr>
        </c:forEach>
    </table>
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

