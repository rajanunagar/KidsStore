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
<title>KidsStore</title>

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
.product-f-image {
	height: 260px !important;
}

.dropdown-menu {
	background-color: White !important;
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

	<div class="header-area">
		<div class="container">
			<div class="row">
				<div class="col-md-8">
					<div class="user-menu">
						<ul>
							<li><a href="viewProfile"><i class="fa fa-user"></i> My
									Account</a></li>

							<li><a href="cart"><i class="fa fa-user"></i> My Cart</a></li>
							<li><a href="checkout"><i class="fa fa-user"></i>
									Checkout</a></li>
                            <%
                              String uname=(String)session.getAttribute("username");
                            if(uname==null){
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
						<div class="logo">
                        <h1><a href="./"><img src="./static/img/logo.png"></a></h1>
                    </div>					
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
						<li class="active"><a href="./">Home</a></li>
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
						<li><a href="orders">Orders</a></li>
                        <li><a href="viewProfile">My Profile</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<!-- End mainmenu area -->

	<div class="slider-area">
		<!-- Slider -->
		<div class="block-slider block-slider4">
			<ul class="" id="bxslider-home4">
				<li><img src="./static/img/slider-5.jpeg" alt="Slide">
					<div class="caption-group">
						<h2 class="caption title">
							Topwear of <span class="primary"><strong>Gini & Jony</strong></span>
						</h2>
						<h4 class="caption subtitle"></h4>
						<a class="caption button-radius" href="#"><span class="icon"></span>Shop
							now</a>
					</div></li>
				<li><img src="./static/img/slider-2.jpeg" alt="Slide">
					<div class="caption-group">
						<h2 class="caption title">
						    <span class="primary">50% <strong>off</strong></span>
						</h2>
						<h4 class="caption subtitle">on shopping more than 500*</h4>
						<a class="caption button-radius" href="#"><span class="icon"></span>Shop
							now</a>
					</div></li>
				<li><img src="./static/img/slider-7.jpeg" alt="Slide">
					<div class="caption-group">
						<h2 class="caption title">
							<span class="primary">Toys with so much variety</span>
						</h2>
						<h4 class="caption subtitle">Select Item</h4>
						<a class="caption button-radius" href="#"><span class="icon"></span>Shop
							now</a>
					</div></li>
				<li><img src="./static/img/slider-6.jpeg" alt="Slide">
					<div class="caption-group">
						<h2 class="caption title">
							<span class="primary">Buy One <strong>get one free</strong></span>
						</h2>
						<h4 class="caption subtitle">for specific food brands*</h4>
						<a class="caption button-radius" href="#"><span class="icon"></span>Shop
							now</a>
					</div></li>
			</ul>
		</div>
		<!-- ./Slider -->
	</div>
	<!-- End slider area -->

	<div class="promo-area">
		<div class="zigzag-bottom"></div>
		<div class="container">
			<div class="row">
				<div class="col-md-3 col-sm-6">
					<div class="single-promo promo1">
						<i class="fa fa-refresh"></i>
						<p>30 Days return</p>
					</div>
				</div>
				<div class="col-md-3 col-sm-6">
					<div class="single-promo promo2">
						<i class="fa fa-truck"></i>
						<p>Free shipping</p>
					</div>
				</div>
				<div class="col-md-3 col-sm-6">
					<div class="single-promo promo3">
						<i class="fa fa-lock"></i>
						<p>Secure payments</p>
					</div>
				</div>
				<div class="col-md-3 col-sm-6">
					<div class="single-promo promo4">
						<i class="fa fa-gift"></i>
						<p>New products</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div></div>
	<br>
	<div class="maincontent-area">
		<div class="zigzag-bottom"></div>
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="latest-product">
						<h2 class="section-title">Latest Products</h2>
						<div class="product-carousel">
							<!-- <div class="single-product">
                                <div class="product-f-image">
                                    <img src="./static/img/t2.jpg" alt="">
                                    <div class="product-hover">
                                        <a href="CartController?id=t2" class="add-to-cart-link"><i class="fa fa-shopping-cart"></i> Add to cart</a>
                                        <a href="single-product" class="view-details-link"><i class="fa fa-link"></i> See details</a>
                                    </div>
                                </div>
                                
                                <h2>Nokia Lumia 1320</h2>
                                <div class="product-carousel-price">
                                    <ins>$899.00</ins> <del>$999.00</del>
                                </div> 
                            </div> -->
							<!-- <div class="single-product">
                                <div class="product-f-image">
                                    <img src="./static/img/t1.jpg" alt="">
                                    <div class="product-hover">
                                        <a href="CartController?id=t1" class="add-to-cart-link"><i class="fa fa-shopping-cart"></i> Add to cart</a>
                                        <a href="single-product" class="view-details-link"><i class="fa fa-link"></i> See details</a>
                                    </div>
                                </div>
                                
                                <h2><a href="single-product">Samsung Galaxy s5- 2015</a></h2>
                                
                                <div class="product-carousel-price">
                                    <ins>$700.00</ins> <del>$100.00</del>
                                </div> 
                            </div>
                           
                            <div class="single-product">
                                <div class="product-f-image">
                                    <img src="./static/img/t2.jpg" alt="">
                                    <div class="product-hover">
                                        <a href="CartController?id=t2" class="add-to-cart-link"><i class="fa fa-shopping-cart"></i> Add to cart</a>
                                        <a href="single-product" class="view-details-link"><i class="fa fa-link"></i> See details</a>
                                    </div>
                                </div>
                                
                                <h2>Nokia Lumia 1320</h2>
                                <div class="product-carousel-price">
                                    <ins>$899.00</ins> <del>$999.00</del>
                                </div> 
                            </div>
                            <div class="single-product">
                                <div class="product-f-image">
                                    <img src="./static/img/c1.jpg" alt="">
                                    <div class="product-hover">
                                        <a href="CartController?id=c1" class="add-to-cart-link"><i class="fa fa-shopping-cart"></i> Add to cart</a>
                                        <a href="single-product" class="view-details-link"><i class="fa fa-link"></i> See details</a>
                                    </div>
                                </div>
                                
                                <h2>LG Leon 2015</h2>

                                <div class="product-carousel-price">
                                    <ins>$400.00</ins> <del>$425.00</del>
                                </div>                                 
                            </div>
                            <div class="single-product">
                                <div class="product-f-image">
                                    <img src="./static/img/c2.jpg" alt="">
                                    <div class="product-hover">
                                        <a href="CartController?id=c2" class="add-to-cart-link"><i class="fa fa-shopping-cart"></i> Add to cart</a>
                                        <a href="single-product" class="view-details-link"><i class="fa fa-link"></i> See details</a>
                                    </div>
                                </div>
                                
                                <h2><a href="single-product">Sony microsoft</a></h2>

                                <div class="product-carousel-price">
                                    <ins>$200.00</ins> <del>$225.00</del>
                                </div>                            
                            </div>
                            <div class="single-product">
                                <div class="product-f-image">
                                    <img src="./static/img/product-5.jpg" alt="">
                                    <div class="product-hover">
                                        <a href="#" class="add-to-cart-link"><i class="fa fa-shopping-cart"></i> Add to cart</a>
                                        <a href="single-product" class="view-details-link"><i class="fa fa-link"></i> See details</a>
                                    </div>
                                </div>
                                
                                <h2>iPhone 6</h2>

                                <div class="product-carousel-price">
                                    <ins>$1200.00</ins> <del>$1355.00</del>
                                </div>                                 
                            </div>-->
							<%-- 	<div class="single-product">
								<div class="product-f-image">
									<img src="./static/img/t3.jpg" alt="">
									                                    ${product.getPhoto() }

									<div class="product-hover">
										<a href="#" class="add-to-cart-link"><i
											class="fa fa-shopping-cart"></i> Add to cart</a> <a
											href="single-product?id=t3" class="view-details-link"><i
											class="fa fa-link"></i> See details</a>
									</div>
								</div>

								<h2>
									<a href="single-product">${product.getName()}</a>
								</h2>

								<div class="product-carousel-price">
									<ins>Rs. ${product.getPrice() }</ins>
								</div>
							</div> --%>
							<%
							List<Product> p = (List<Product>) request.getAttribute("product");
							for (int i = 0; i < p.size(); i++) {
								double dis = Double.valueOf(p.get(i).getDiscount());
								dis = 100 - dis;
								out.print("<div class='single-product'><div class='product-f-image'><img src='./static/img/" + p.get(i).getPid()
								+ ".jpg' style='width:100vw'alt=''><div class='product-hover'><a href='addcart?id=" + p.get(i).getPid()
								+ "' class='add-to-cart-link'><i class='fa fa-shopping-cart'></i> Add to cart</a><a href='single-product?id="
								+ p.get(i).getPid()
								+ "' class='view-details-link'><i class='fa fa-link'></i> See details</a></div></div><h2><a href='single-product'>"
								+ p.get(i).getName() + "</a></h2><div class='product-carousel-price'><ins>Rs. "
								+ (Double.valueOf(p.get(i).getPrice())) * (dis / 100) + "</ins> <del>Rs. " + p.get(i).getPrice()
								+ "</del></div></div>");
							}
							%>

							<%--    <%
                       PrintWriter output =response.getWriter();
/*       output.print("<div class='promo-area'><div class='zigzag-bottom'></div><div class='container'><div class='row'></div><div class='col-md-3 col-sm-6'><div class='single-promo promo1'><i class='fa fa-refresh'></i><p>30 Days return</p></div></div><div class='col-md-3 col-sm-6'><div class='single-promo promo2'><i class='fa fa-truck'></i><p>Free shipping</p></div></div><div class='col-md-3 col-sm-6'><div class='single-promo promo3'><i class='fa fa-lock'></i><p>Secure payments</p></div></div><div class='col-md-3 col-sm-6'><div class='single-promo promo4'><i class='fa fa-gift'></i><p>New products</p></div></div></div></div></div>");
 */                            String url = "jdbc:mysql://localhost:3306/kidsstore";
                            Connection con=null;
                    		try {
                    			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
                    			con = DriverManager.getConnection(url, "root",  "");
                    			try (PreparedStatement pstmt = con.prepareStatement("SELECT * FROM product")) {
                    				try (ResultSet rs = pstmt.executeQuery()) {
                    					int count=0;
                    					while (rs.next() && count<6) {
                    						count++;
                    		                String id=rs.getString(5);
                    		                String name=rs.getString(1);
                    		                int price=rs.getInt(2);
                    		                PrintWriter ou = response.getWriter();
                    		                ou.println("<div class='single-product'><div class='product-f-image'><img src='./static/img/"+id+".jpg' alt=''><div class='product-hover'><a href='CartController?id=c2' class='add-to-cart-link'><i class='fa fa-shopping-cart'></i> Add to cart</a><a href='single-product?id="+id+"' class='view-details-link'><i class='fa fa-link'></i> See details</a></div></div><h2><a href='single-product'>"+name+"</a></h2><div class='product-carousel-price'><ins>Rs. "+price*0.9+"</ins> <del>Rs. "+price+"</del></div></div>");
                    		                		/*  ou.println("<div class='single-product'><div class='product-f-image'><img src='./static/img/'"+id+"'.jpg' alt=''><div class='product-hover'><a href='CartController?id=t2' class='add-to-cart-link'><i class='fa fa-shopping-cart'></i> Add to cart</a><a href='single-product' class='view-details-link'><i class='fa fa-link'></i> See details</a></div></div><h2>"+name+"</h2><div class='product-carousel-price'><ins>₹"+price/10+"</ins> <del>₹"+price+"</del></div> </div>");
                    						*/
                    		                System.out.println("ID " + rs.getString(5));
                    						System.out.println("Name " + rs.getString(1));
                    					/* 	System.out.println("Age " + rs.getInt(4));
                    						System.out.println("DOB "+rs.getDate("DOB")); */
                    					}
                    				}
                    			}
                    		} catch (SQLException ex) {
                    			System.err.println("SQLException: " + ex.getMessage());
                    		}
                            %> --%>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="brands-area">
		<div class="zigzag-bottom"></div>
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="brand-wrapper">
						<div class="brand-list">
							<img src=" ./static/img/brand1.png" alt=""> <img
								src=" ./static/img/brand2.png" alt=""> <img
								src=" ./static/img/brand3.png" alt=""> <img
								src=" ./static/img/brand4.png" alt=""> <img
								src=" ./static/img/brand5.png" alt=""> <img
								src=" ./static/img/brand6.png" alt=""> <img
								src=" ./static/img/brand1.png" alt=""> <img
								src=" ./static/img/brand2.png" alt="">
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End brands area -->

	<div class="product-widget-area">
		<div class="zigzag-bottom"></div>
		<div class="container">
			<div class="row">
				<div class="col-md-4">
					<div class="single-product-widget">
						<h2 class="product-wid-title">Top Sellers</h2>
						<a href="shop?type=all" class="wid-view-more">View All</a>
						<%
						/* 						List<Product> p = (List<Product>) request.getAttribute("product");
						 */ for (int i = 2; i < p.size() && i <= 4; i++) {
							double dis = Double.valueOf(p.get(i).getDiscount());
							dis = 100 - dis;
							out.print("<div class='single-wid-product'><a href='single-product?id=" + p.get(i).getPid()
							+ "'><img src=' ./static/img/" + p.get(i).getPid()
							+ ".jpg' alt=''class='product-thumb'></a><h2><a href='single-product?id=" + p.get(i).getPid() + "'>"
							+ p.get(i).getName()
							+ "</a></h2><div class='product-wid-rating'><i class='fa fa-star'></i> <i class='fa fa-star'></i> <i class='fa fa-star'></i> <i class='fa fa-star'></i> <i class='fa fa-star'></i></div><div class='product-wid-price'><ins>"
							+ p.get(i).getPrice() * (dis / 100) + "</ins><del>" + p.get(i).getPrice() + "</del></div></div>");
						}
						%>
						<!-- <div class="single-wid-product">
							<a href="single-product"><img
								src=" ./static/img/product-thumb-1.jpg" alt=""
								class="product-thumb"></a>
							<h2>
								<a href="single-product">Sony Smart TV - 2015</a>
							</h2>
							<div class="product-wid-rating">
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i>
							</div>
							<div class="product-wid-price">
								<ins>$400.00</ins>
								<del>$425.00</del>
							</div>
						</div>
						<div class="single-wid-product">
							<a href="single-product"><img
								src=" ./static/img/product-thumb-2.jpg" alt=""
								class="product-thumb"></a>
							<h2>
								<a href="single-product">Apple new mac book 2015</a>
							</h2>
							<div class="product-wid-rating">
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i>
							</div>
							<div class="product-wid-price">
								<ins>$400.00</ins>
								<del>$425.00</del>
							</div>
						</div>
						<div class="single-wid-product">
							<a href="single-product"><img
								src=" ./static/img/product-thumb-3.jpg" alt=""
								class="product-thumb"></a>
							<h2>
								<a href="single-product">Apple new i phone 6</a>
							</h2>
							<div class="product-wid-rating">
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i>
							</div>
							<div class="product-wid-price">
								<ins>$400.00</ins>
								<del>$425.00</del>
							</div>
						</div> -->
					</div>
				</div>
				<div class="col-md-4">
					<div class="single-product-widget">
						<h2 class="product-wid-title">Recently Viewed</h2>
						<!-- 						<a href="#" class="wid-view-more">View All</a>
 -->
						<%
						List<Recents> r = (List<Recents>) request.getAttribute("recents");
						if (r.size() != 0) {
							for (int i = r.size() - 1; i >= 0 && i > r.size() - 4; i--) {
								double dis = Double.valueOf(r.get(i).getProduct().getDiscount());
								dis = 100 - dis;
								String id = r.get(i).getProduct().getPid();
								out.print("<div class='single-wid-product'><a href='single-product?id=" + id + "'><img src=' ./static/img/" + id
								+ ".jpg' alt=''class='product-thumb'></a><h2><a href='single-product?id=" + id + "'>"
								+ r.get(i).getProduct().getName()
								+ "</a></h2><div class='product-wid-rating'><i class='fa fa-star'></i> <i class='fa fa-star'></i> <i class='fa fa-star'></i> <i class='fa fa-star'></i> <i class='fa fa-star'></i></div><div class='product-wid-price'><ins>"
								+ (Double.valueOf(r.get(i).getProduct().getPrice())) * (dis / 100) + "</ins><del>"
								+ r.get(i).getProduct().getPrice() + "</del></div></div>");
							}
						}
						%>
						<!-- <div class="single-wid-product">
							<a href="single-product"><img
								src=" ./static/img/product-thumb-4.jpg" alt=""
								class="product-thumb"></a>
							<h2>
								<a href="single-product">Sony playstation microsoft</a>
							</h2>
							<div class="product-wid-rating">
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i>
							</div>
							<div class="product-wid-price">
								<ins>$400.00</ins>
								<del>$425.00</del>
							</div>
						</div>
						<div class="single-wid-product">
							<a href="single-product"><img
								src=" ./static/img/product-thumb-1.jpg" alt=""
								class="product-thumb"></a>
							<h2>
								<a href="single-product">Sony Smart Air Condtion</a>
							</h2>
							<div class="product-wid-rating">
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i>
							</div>
							<div class="product-wid-price">
								<ins>$400.00</ins>
								<del>$425.00</del>
							</div>
						</div>
						<div class="single-wid-product">
							<a href="single-product"><img
								src=" ./static/img/product-thumb-2.jpg" alt=""
								class="product-thumb"></a>
							<h2>
								<a href="single-product">Samsung gallaxy note 4</a>
							</h2>
							<div class="product-wid-rating">
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i>
							</div>
							<div class="product-wid-price">
								<ins>$400.00</ins>
								<del>$425.00</del>
							</div>
						</div> -->
					</div>
				</div>
				<div class="col-md-4">
					<div class="single-product-widget">
						<h2 class="product-wid-title">Top New</h2>
						<a href="shop?type=all" class="wid-view-more">View All</a>
						<%
						/* 						List<Product> p = (List<Product>) request.getAttribute("product");
						 */ for (int i = 1; i < p.size() && i <= 3; i++) {
							double dis = Double.valueOf(p.get(i).getDiscount());
							dis = 100 - dis;
							out.print("<div class='single-wid-product'><a href='single-product?id=" + p.get(i).getPid()
							+ "'><img src=' ./static/img/" + p.get(i).getPid()
							+ ".jpg' alt=''class='product-thumb'></a><h2><a href='single-product?id=" + p.get(i).getPid() + "'>"
							+ p.get(i).getName()
							+ "</a></h2><div class='product-wid-rating'><i class='fa fa-star'></i> <i class='fa fa-star'></i> <i class='fa fa-star'></i> <i class='fa fa-star'></i> <i class='fa fa-star'></i></div><div class='product-wid-price'><ins>"
							+ (Double.valueOf(p.get(i).getPrice())) * (dis / 100) + "</ins><del>" + p.get(i).getPrice()
							+ "</del></div></div>");
						}
						%>
						<!-- <div class="single-wid-product">
							<a href="single-product"><img
								src=" ./static/img/product-thumb-3.jpg" alt=""
								class="product-thumb"></a>
							<h2>
								<a href="single-product">Apple new i phone 6</a>
							</h2>
							<div class="product-wid-rating">
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i>
							</div>
							<div class="product-wid-price">
								<ins>$400.00</ins>
								<del>$425.00</del>
							</div>
						</div>
						<div class="single-wid-product">
							<a href="single-product"><img
								src=" ./static/img/product-thumb-4.jpg" alt=""
								class="product-thumb"></a>
							<h2>
								<a href="single-product">Samsung gallaxy note 4</a>
							</h2>
							<div class="product-wid-rating">
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i>
							</div>
							<div class="product-wid-price">
								<ins>$400.00</ins>
								<del>$425.00</del>
							</div>
						</div>
						<div class="single-wid-product">
							<a href="single-product"><img
								src=" ./static/img/product-thumb-1.jpg" alt=""
								class="product-thumb"></a>
							<h2>
								<a href="single-product">Sony playstation microsoft</a>
							</h2>
							<div class="product-wid-rating">
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i>
							</div>
							<div class="product-wid-price">
								<ins>$400.00</ins>
								<del>$425.00</del>
							</div>
						</div> -->
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End product widget area -->

	<div class="footer-top-area">
		<div class="zigzag-bottom"></div>
		<div class="container">
			<div class="row">
				<div class="col-md-3 col-sm-6">
					<div class="footer-about-us">
						<h2>
							Kids<span>Store</span>
						</h2>
						<p>Children's clothing or kids' clothing is clothing for children who have not yet grown to full height. Children's clothing is often more casual than adult clothing, fit for play and rest.amazing food is available with cheaper price.also attractive and lots of varieties of toys are available.</p>
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
							<li><a href="orders">Order history</a></li>
							<li><a href="#">Vendor contact</a></li>
							<li><a href="./">Front page</a></li>
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
	</div>
	<!-- End footer top area -->

	<div class="footer-bottom-area">
		<div class="container">
			<div class="row">
				<div class="col-md-8">
					<div class="copyright">
						<p>
							&copy; 2022 uCommerce. All Rights Reserved. 
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
	</div>
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