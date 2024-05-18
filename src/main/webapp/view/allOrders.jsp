<%@page import="java.util.List"%>
<%@page import="com.kidsstore.Kidsstore.entities.CartList"%>
<%@page import="com.kidsstore.Kidsstore.entities.Cart"%>
<%@page import="com.kidsstore.Kidsstore.entities.Order"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<!--  <link href="./static/css/bootstrap.css" rel="stylesheet" />
        <link href="./static/css/font-awesome.css" rel="stylesheet" />
        <link href="./static/css/style1.css" rel="stylesheet" />
        <link href="./static/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" /> -->

<link
	href='http://fonts.googleapis.com/css?family=Titillium+Web:400,200,300,700,600'
	rel='stylesheet' type='text/css'>
<link
	href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300'
	rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Raleway:400,100'
	rel='stylesheet' type='text/css'>

<!-- Bootstrap -->
<link rel="stylesheet" href="./static/css/bootstrap.min.css">

<!-- Font Awesome -->
<link rel="stylesheet" href="./static/css/font-awesome.min.css">

<!-- Custom CSS -->
<link rel="stylesheet" href="./static/css/owl.carousel.css">
<link rel="stylesheet" href="./static/css/style.css">
<link rel="stylesheet" href="./static/css/responsive.css">
<!--         <link href="./static/css/style2.css" rel="stylesheet" type="text/css" media="all" /> 
 -->
<style type="text/css">
.checkout {
	margin-top: 15px;
}

#customers {
	font-family: Arial, Helvetica, sans-serif;
	border-collapse: collapse;
	width: 100%;
}

#customers td, #customers th {
	border: 1px solid #ddd;
	padding: 8px;
}

#customers tr:nth-child(even) {
	background-color: #f2f2f2;
}

#customers tr:hover {
	background-color: #ddd;
}

#customers th {
	padding-top: 12px;
	padding-bottom: 12px;
	text-align: left;
	background-color: #6495ED;
	color: white;
}
</style>
</head>
<body>
	<div class="header-area">
		<div class="container">
			<div class="row">
				<div class="col-md-8">
					<div class="user-menu">
						<ul>
							<li><a href="addProduct"><i class="fa fa-user"></i> My
									Account</a></li>

							<li><a href="cart"><i class="fa fa-user"></i> My Cart</a></li>
							<li><a href="checkout"><i class="fa fa-user"></i>
									Checkout</a></li>
							<%
							String uname = (String) session.getAttribute("username");
							if (uname == null) {
							%>
							<li><a href="login"><i class="fa fa-user"></i> Login</a></li>
							<%
							}
							%>
							<li><a href="login"><i class="fa fa-sign-out"></i> Logout</a></li>

						</ul>
					</div>
				</div>

				<div class="col-md-4">
					<div class="header-right">
						<ul class="list-unstyled list-inline">
							<!--     <li class="dropdown dropdown-small">
                                <a data-toggle="dropdown" data-hover="dropdown" class="dropdown-toggle" href="#"><span class="key">currency :</span><span class="value">USD </span><b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                    <li><a href="#">USD</a></li>
                                    <li><a href="#">INR</a></li>
                                    <li><a href="#">GBP</a></li>
                                </ul>
                            </li> -->
							<span>Welcome <b>${username}</b></span>

							<li class="dropdown dropdown-small"><a
								data-toggle="dropdown" data-hover="dropdown"
								class="dropdown-toggle" href="#"><span class="key">language
										:</span><span class="value">English </span><b class="caret"></b></a>
								<ul class="dropdown-menu">
									<li><a href="#">English</a></li>

								</ul></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End header area -->

	<div class="site-branding-area">
		<div class="container">
			<div class="row">
				<div class="col-sm-6">
					<div class="logo">
						<h1>
							<a href="./"><img src="./static/img/logo.png"></a>
						</h1>
					</div>
				</div>

				<div class="col-sm-6">
					<div class="shopping-item">
						<a href="cart">Cart - <span class="cart-amunt">Rs.
								${total }</span> <i class="fa fa-shopping-cart"></i> <span
							class="product-count">${totalproducts }</span></a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End site branding area -->

	<div class="mainmenu-area">
		<div class="container">
			<div class="row">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target=".navbar-collapse">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
				</div>
				<div class="navbar-collapse collapse">
					<ul class="nav navbar-nav">
						<li ><a href="./">Home</a></li>
						<li><a href="shop?type=all">Shop page</a></li>
						<li><a href="single-product?id=c2">Single product</a></li>
						<li><a href="cart">Cart</a></li>

						<li class="dropdown dropdown-small"><a data-toggle="dropdown"
							data-hover="dropdown" class="dropdown-toggle" href="#"><span
								class="key">Category </span><span class="value"> </span><b
								class="caret"></b></a>
							<ul class="dropdown-menu">
								<li><a href="shop?type=Toy">Toy</a></li>
								<li><a href="shop?type=Food">Baby Food</a></li>
								<li><a href="shop?type=Cloth">Cloth</a></li>
							</ul></li>
						<li><a href="checkout">Checkout</a></li>
						<li class="active"><a href="orders">Orders</a></li>
                        <li><a href="viewProfile">My Profile</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div class="product-big-title-area">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="product-bit-title text-center">
						<h2>My Orders</h2>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="container">
		<a href="checkout.jsp"> <%
 //Getting count of products of cart

 List<Order> o = (List<Order>) request.getAttribute("orders");
 %>

		</a>

		<div class="clearfix"></div>
	</div>
	<!--         <div class="page-head">
            <div class="container">
                <h3>My Orders</h3>
            </div>
        </div> -->
	<div class="checkout">
		<div class="container">
			<div class="table-responsive">
				<table class="table table-bordered" id="customers"
					style="border: 10px">
					<thead>
						<tr>
							<th>SR.No</th>
							<th>Order No</th>
							<th>Product</th>
							<th>Quantity</th>
							<th>MRP($)</th>
							<th>Selling Price($)</th>
							<th>Total Price($)</th>
							<th>Order Date</th>
							<th>Status</th>
						</tr>
					</thead>
					<%
					int ind = 0;
/* 					for (int j = 0; j < or.size(); j++) {
						Cart cart = or.get(j).getCart();
						List<CartList> cartlist = or.get(j).getCart().getProduct(); */
						for (int i = 0; i < o.size(); i++) {
							double dis = o.get(i).getProduct().getDiscount();
							dis = 100 - dis;
							ind++;

							/*  int index = 0;
							 //Getting all products
							 ResultSet totalProduct = DatabaseConnection.getResultFromSqlQuery("select * from tblorders where customer_name='" + session.getAttribute("name") + "' ");
							 while (totalProduct.next()) {
							     index++; */
					%>
					<tr class="rem1">
						<td class="invert"><%=i%></td>
                            <td class="invert"><%=o.get(i).getId()%></td>
                            <td class="invert"><img src="./static/img/<%=o.get(i).getProduct().getPid()%>.jpg" style="width: 150px; height: 100px;"><br><%=o.get(i).getProduct().getName()%></td>
                            <td class="invert"><%=o.get(i).getQuantity()%></td>
                            <td class="invert"><del><%=o.get(i).getProduct().getPrice()%></del></td>
                            <td class="invert"><%=o.get(i).getProduct().getPrice()*(dis/100)%></td>
                            <td class="invert"><%=o.get(i).getProduct().getPrice()*(dis/100)*o.get(i).getQuantity()%></td>
                            <td class="invert"><%=o.get(i).getDate()%></td>
						<%--                             <td class="invert"><%=cartlist.get(i).getQuantity()%></td>
 --%>
						<%
						//If order is delivered
						String status=(String)o.get(i).getStatus();
						if(status.equals("Delivered")){
						/*                                 if (totalProduct.getString(15).equals("Deliver")) {
						 */
						%>
						<td><span class="label label-success"><strong>Delivered</strong></span></td>
						<%
						                            } else {
						 
						%>
						<td><span class="label label-danger"><strong>Pending</strong></span></td>
						<%
						                                }
						 
						%>
					</tr>
					<%
					}
					/* } */
					%>
					<!--  <script>
                            $('.value-plus').on('click', function () {
                                var divUpd = $(this).parent().find('.value'), newVal = parseInt(divUpd.text(), 10) + 1;
                                divUpd.text(newVal);
                            });

                            $('.value-minus').on('click', function () {
                                var divUpd = $(this).parent().find('.value'), newVal = parseInt(divUpd.text(), 10) - 1;
                                if (newVal >= 1)
                                    divUpd.text(newVal);
                            });
                        </script> -->
				</table>
			</div>
		</div>
	</div>
	<%
	  if(o.size()>10){
	%>
	            <div class="row">
                <div class="col-md-12">
                    <div class="product-pagination text-center">
                        <nav>
                          <ul class="pagination">
                           
                            <li><a href="orders">1</a></li>
                            <li><a href="orderspage?page=2">2</a></li>
                            <li><a href="orderspage?page=3">3</a></li>
                            <li><a href="orderspage?page=4">4</a></li>
                            <li><a href="orderspage?page=5">5</a></li>

                          </ul>
                        </nav>                        
                    </div>
                </div>
            </div>
            <%
	  }
            %>
		<!-- Latest jQuery form server -->
	<script src="https://code.jquery.com/jquery.min.js"></script>

	<!-- Bootstrap JS form CDN -->
	<script
		src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

	<!-- jQuery sticky menu -->
	<script src="./static/js/owl.carousel.min.js"></script>
	<script src="./static/js/jquery.sticky.js"></script>

	<!-- jQuery easing -->
	<script src="./static/js/jquery.easing.1.3.min.js"></script>

	<!-- Main Script -->
	<script src="./static/js/main.js"></script>

	<!-- Slider -->
	<script type="text/javascript" src="./static/js/bxslider.min.js"></script>
	<script type="text/javascript" src="./static/js/script.slider.js"></script>
</body>
</html>