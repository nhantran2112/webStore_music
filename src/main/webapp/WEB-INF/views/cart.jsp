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

<div class="container">
    <section>
        <div class="jumbotron">
            <div class="container">
                <h1>CART</h1>
                <p>Products you have selected </p>
                <p>Cart Id id: ${cartId}</p>
                <%--<p>Cart is ${cart}</p>--%>
            </div>
        </div>
    </section>

    <section class="container" ng-app="cartApp">
        <div ng-controller="cartController" ng-init="initCartId('${cartId}')">
            <div>
                <a class="btn btn-danger pull-left"
                   ng-click="clearCart()"><span class="glyphicon glyphicon-remove-sign"/>Clear Cart</a>
            </div>
            <p>Cart from Angular {{cart}}</p>
            <table class="table table-hover">
                <tr>
                    <th>Product</th>
                    <th>Unit Price</th>
                    <th>Quantity</th>
                    <th>Price</th>
                    <th>Action</th>
                </tr>
                <tr ng-repeat="item in cart.cartItems">
                    <td>{{item.product.productName}}</td>
                    <td>{{item.product.productPrice}}</td>
                    <td>{{item.product.quantity}}</td>
                    <td>{{item.product.totalPrice}}</td>
                    <%--<tr>--%>
                    <%--<td>${cart.getCartItem  .cartItem.get(product).product.productName}</td>--%>
                    <%--<td>${cart.cartItem.get(product).product.productPrice}</td>--%>
                    <%--<td>${cart.cartItem.get(product).product.quantity}</td>--%>
                    <%--<td>${cart.cartItem.get(product).product.totalPrice}</td>--%>
                    <td><a href="#" class="label label-danger"
                           ng-click="removeFromCart(item.product.productId)">
                        <%--<span class="glyphicon glyphicon-trash"/>--%>Remove</a></td>
                </tr>
                <tr>
                    <th></th>
                    <th></th>
                    <th>Grand Total</th>
                    <th>{{cart.grandTotal}}</th>
                </tr>
            </table>

            <a href="<spring:url value="/productList"/>" class="btn btn-default">Continue Shopping</a>
        </div><%--controller--%>
    </section>
</div>

<script src="<c:url value="/resources/js/controller.js"/> "></script>

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