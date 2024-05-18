<!DOCTYPE html>
<!--
	ustora by freshdesignweb.com
	Twitter: https://twitter.com/freshdesignweb
	URL: https://www.freshdesignweb.com/ustora/
-->
<%-- <%@page import="java.io.PrintWriter"%>
<%@page import="org.hibernate.internal.build.AllowSysOut"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%> --%>
<%@page import="com.kidsstore.Kidsstore.entities.Recents"%>
<%@page import="java.util.List"%>
<%@page import="com.kidsstore.Kidsstore.entities.Product"%>
<%@page import="org.springframework.ui.ModelMap"%>
<%@page import="java.io.PrintWriter"%>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Admin-KidsStore</title>

<!-- Google Fonts -->
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

<style type="text/css">
	.product-f-image{
		height:260px!important;
	}
	.dropdown-menu{
	    background-color:White!important;
	 }
	body{
	  width:auto;
	}
</style>
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>



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
						<li class="active"><a href="./">Products</a></li>
						<li><a href="admin/addProduct">Add Product</a></li>
						<li><a href="logout">Logout</a></li>
						
						<li class="dropdown dropdown-small">
                                <a data-toggle="dropdown" data-hover="dropdown" class="dropdown-toggle" href="#"><span class="key">Category </span><span class="value"> </span><b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                    <li><a href="shop?type=Toy">Toy</a></li>
                                    <li><a href="shop?type=Food">Baby Food</a></li>
                                    <li><a href="shop?type=Cloth">Cloth</a></li>
                                </ul>
                            </li>
<!-- 						<li><a href="admin/viewproduct">Single Product</a></li>
 -->						<li><a href="#">Orders</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<!-- End mainmenu area -->

	

   <div class="single-product-area">
        <div class="zigzag-bottom"></div>
        <div class="container">
            <div class="row">
            <%
            List<Product> cat=(List<Product>)request.getAttribute("cat");
            String type=(String)session.getAttribute("type");
            System.out.println(type);
             session.setAttribute("nextpage", "shop");
             for(int i=0;i<cat.size();i++){
					double dis=Double.valueOf(cat.get(i).getDiscount());
					dis=100-dis;

            	 System.err.print(cat.get(i));	
              out.print("<div class='col-md-3 col-sm-6'><div class='single-shop-product'><div class='product-upper'><img src='./static/img/"+cat.get(i).getPid()+".jpg' alt=''></div><h2><a href=''>"+cat.get(i).getName()+"</a></h2><div class='product-carousel-price'><ins>Rs. "+cat.get(i).getPrice()*(dis/100)+"</ins> <del>Rs."+cat.get(i).getPrice()+"</del></div>  <div class='product-option-shop'><a class='add_to_cart_button' data-quantity='1' data-product_sku='' data-product_id='70' rel='nofollow' href='admin/manageProduct?id="+cat.get(i).getPid()+"'>Edit Product</a>&nbsp<a class='add_to_cart_button' data-quantity='1' data-product_sku='' data-product_id='70' rel='nofollow' href='admin/viewproduct?id="+cat.get(i).getPid()+"'>View Product</a></div></div></div>");
             }
            %>
            </div>
	<br>



	<!-- End product widget area -->

	<!-- <div class="footer-top-area">
		<div class="zigzag-bottom"></div>
		<div class="container">
			<div class="row">
				<div class="col-md-3 col-sm-6">
					<div class="footer-about-us">
						<h2>
							u<span>Stora</span>
						</h2>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
							Perferendis sunt id doloribus vero quam laborum quas alias
							dolores blanditiis iusto consequatur, modi aliquid eveniet
							eligendi iure eaque ipsam iste, pariatur omnis sint! Suscipit,
							debitis, quisquam. Laborum commodi veritatis magni at?</p>
						<div class="footer-social">
							<a href="#" target="_blank"><i class="fa fa-facebook"></i></a> <a
								href="#" target="_blank"><i class="fa fa-twitter"></i></a> <a
								href="#" target="_blank"><i class="fa fa-youtube"></i></a> <a
								href="#" target="_blank"><i class="fa fa-linkedin"></i></a>
						</div>
					</div>
				</div>

				<div class="col-md-3 col-sm-6">
					<div class="footer-menu">
						<h2 class="footer-wid-title">User Navigation</h2>
						<ul>
							<li><a href="#">My account</a></li>
							<li><a href="#">Order history</a></li>
							<li><a href="#">Wishlist</a></li>
							<li><a href="#">Vendor contact</a></li>
							<li><a href="#">Front page</a></li>
						</ul>
					</div>
				</div>

				<div class="col-md-3 col-sm-6">
					<div class="footer-menu">
						<h2 class="footer-wid-title">Categories</h2>
						<ul>
                            <li><a href="shop?type=Toy">Toy</a></li>
                            <li><a href="shop?type=Food">Baby food</a></li>
                            <li><a href="shop?type=Cloth">Cloths</a></li>
						</ul>
					</div>
				</div>

				<div class="col-md-3 col-sm-6">
					<div class="footer-newsletter">
						<h2 class="footer-wid-title">Newsletter</h2>
						<p>Sign up to our newsletter and get exclusive deals you wont
							find anywhere else straight to your inbox!</p>
						<div class="newsletter-form">
							<form action="#">
								<input type="email" placeholder="Type your email"> <input
									type="submit" value="Subscribe">
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div> -->
	<!-- End footer top area -->
<!-- <div></div>
	<div class="footer-bottom-area">
		<div class="">
			<div class="row">
				<div class="col-md-8">
					<div class="copyright">
						<p>
							&copy; 2015 uCommerce. All Rights Reserved. <a
								href="http://www.freshdesignweb.com" target="_blank">freshDesignweb.com</a>
						</p>
					</div>
				</div>

				<div class="col-md-4">
					<div class="footer-card-icon">
						<i class="fa fa-cc-discover"></i> <i class="fa fa-cc-mastercard"></i>
						<i class="fa fa-cc-paypal"></i> <i class="fa fa-cc-visa"></i>
					</div>
				</div>
			</div>
		</div>
	</div> -->
	<!-- End footer bottom area -->

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