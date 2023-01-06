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

<div class="container" style="margin-top: 50px">
    <div class="page-header">
        <c:if test="${pageContext.request.userPrincipal.name!=null}">
            <h4 style="text-align: right">
                Welcome ${pageContext.request.userPrincipal.name} | <a
                    href="<c:url value="/j_spring_security_logout"/>">Logout</a>
            </h4>
        </c:if>
        <h1>Add Product</h1>
        <p class="lead">Fill the information below to add a product!</p>
    </div>

    <form:form action="${pageContext.request.contextPath}/admin/productInventory/addProduct"
               method="post" commandName="product" enctype="multipart/form-data">
        <div class="form-group">
            <label for="name">Product Name</label> <form:errors path="productName" cssStyle="color: #ff0000;"/>
            <form:input path="productName" id="name" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="category">Category</label>
            <label class="checkbox-inline"><form:radiobutton
                    path="productCategory" id="category" value="Spring"/>Spring</label>
            <label class="checkbox-inline"><form:radiobutton
                    path="productCategory" id="category" value="Summer"/>Summer</label>
            <label class="checkbox-inline"><form:radiobutton
                    path="productCategory" id="category" value="Autumn"/>Autumn</label>
            <label class="checkbox-inline"><form:radiobutton
                    path="productCategory" id="category" value="Winter"/>Winter</label>
        </div>

        <div class="form-group">
            <label for="description">Description</label>
            <form:textarea path="productDescription" id="description" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="price">Price</label><form:errors path="productPrice" cssStyle="color: #ff0000;"/>
            <form:input path="productPrice" id="price" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="condition">Condition</label>
            <label class="checkbox-inline"><form:radiobutton path="productCondition" id="condition"
                                                             value="New"/>New</label>
            <label class="checkbox-inline"><form:radiobutton path="productCondition" id="condition"
                                                             value="Old"/>Old</label>
        </div>

        <div class="form-group">
            <label for="status">Status</label>
            <label class="checkbox-inline"><form:radiobutton path="productStatus" id="status"
                                                             value="Active"/>Active</label>
            <label class="checkbox-inline"><form:radiobutton path="productStatus" id="status"
                                                             value="Inactive"/>Inactive</label>
        </div>

        <div class="form-group">
            <label for="unitinstock">Units in Stock</label><form:errors path="unitInStock"
                                                                        cssStyle="color: #ff0000;"/>
            <form:input path="unitInStock" id="unitinstock" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="manufacturer">Manufacturer</label>
            <form:input path="productManufacturer" id="manufacturer" class="form-Control"/>
        </div>

        <div class="form-group">
            <label class="control-label" for="productImage">Upload Picture</label>
            <form:input id="productImage" path="productImage" type="file" class="form:input-large"/>
        </div>


        <br><br>


        <input type="submit" value="Submit" class="btn btn-default"/>
        <a href="<c:url value="/admin/productInventory" />" class="btn btn-default">Cancel</a>


    </form:form>

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



