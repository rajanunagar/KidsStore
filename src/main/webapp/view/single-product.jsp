<!DOCTYPE html>
<!--
	ustora by freshdesignweb.com
	Twitter: https://twitter.com/freshdesignweb
	URL: https://www.freshdesignweb.com/ustora/
-->
<%-- <%@page import="org.hibernate.internal.build.AllowSysOut"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%> --%>
<%@page import="com.kidsstore.Kidsstore.entities.Recents"%>
<%@page import="com.kidsstore.Kidsstore.entities.Product"%>
<%@page import="java.util.List"%>
<%@page import="org.springframework.beans.factory.annotation.Autowired"%>
<%@page import="com.kidsstore.Kidsstore.DAO.ProductDAO"%>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Product Page - KidsStore</title>
    
    <!-- Google Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Titillium+Web:400,200,300,700,600' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Raleway:400,100' rel='stylesheet' type='text/css'>
    
    <!-- Bootstrap -->
    <link rel="stylesheet" href="./static/css/bootstrap.min.css">
    
    <!-- Font Awesome -->
    <link rel="stylesheet" href="./static/css/font-awesome.min.css">
    
    <!-- Custom CSS -->
    <link rel="stylesheet" href="./static/css/owl.carousel.css">
    <link rel="stylesheet" href="./static/css/style.css">
    <link rel="stylesheet" href="./static/css/responsive.css">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  <!--   <style type="text/css">
	.product-f-image{
		height:250px!important;
	} -->
</style>
  </head>
  <body>
   
    <div class="header-area">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <div class="user-menu">
                        <ul>
                            <li><a href="#"><i class="fa fa-user"></i> My Account</a></li>
                            <li><a href="cart"><i class="fa fa-user"></i> My Cart</a></li>
                            <li><a href="checkout"><i class="fa fa-user"></i> Checkout</a></li>
                             <%
                              String uname=(String)session.getAttribute("username");
                            if(uname==null){
                            %>
                            <li><a href="login"><i class="fa fa-user"></i> Login</a></li>
                            <%
                            }
                            %>                            <li><a href="logout"><i class="fa fa-sign-out"></i> Logout</a></li>
                            
                        </ul>
                    </div>
                </div>
                
                <div class="col-md-4">
                    <div class="header-right">
                        <ul class="list-unstyled list-inline">
                            <!-- <li class="dropdown dropdown-small">
                                <a data-toggle="dropdown" data-hover="dropdown" class="dropdown-toggle" href="#"><span class="key">currency :</span><span class="value">USD </span><b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                    <li><a href="#">USD</a></li>
                                    <li><a href="#">INR</a></li>
                                    <li><a href="#">GBP</a></li>
                                </ul>
                            </li> -->
                            <span>Welcome <b>${username}</b></span>

                            <li class="dropdown dropdown-small">
                                <a data-toggle="dropdown" data-hover="dropdown" class="dropdown-toggle" href="#"><span class="key">language :</span><span class="value">English </span><b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                    <li><a href="#">English</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div> <!-- End header area -->
    
    <div class="site-branding-area">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <div class="logo">
                        <h1><a href="./"><img src="./static/img/logo.png"></a></h1>
                    </div>
                </div>
                
                <div class="col-sm-6">
                    <div class="shopping-item">
                        <a href="cart">Cart - <span class="cart-amunt">Rs. ${total }</span> <i class="fa fa-shopping-cart"></i> <span class="product-count">${totalproducts }</span></a>
                    </div>
                </div>
            </div>
        </div>
    </div> <!-- End site branding area -->
    
    <div class="mainmenu-area">
        <div class="container">
            <div class="row">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                </div> 
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li><a href="./">Home</a></li>
                        <li><a href="shop?type=all">Shop page</a></li>
                        <li class="active"><a href="single-product?id=c2">Single product</a></li>
                        <li><a href="cart">Cart</a></li>
                        <li><a href="checkout">Checkout</a></li>
                        <li class="dropdown dropdown-small">
                                <a data-toggle="dropdown" data-hover="dropdown" class="dropdown-toggle" href="#"><span class="key">Category </span><span class="value"> </span><b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                    <li><a href="shop?type=Toy">Toy</a></li>
                                    <li><a href="shop?type=Food">Baby Food</a></li>
                                    <li><a href="shop?type=Cloth">Cloth</a></li>
                                </ul>
                            </li>
                        <li><a href="orders">Orders</a></li>
                        <li><a href="viewProfile">My Profile</a></li>
                    </ul>
                </div>  
            </div>
        </div>
    </div> <!-- End mainmenu area -->
    
    <div class="product-big-title-area">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="product-bit-title text-center">
                        <h2>Shop</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    
    <div class="single-product-area">
        <div class="zigzag-bottom"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <div class="single-sidebar">
                        <h2 class="sidebar-title">Search Products</h2>
                        <form action="">
                            <input type="text" placeholder="Search products...">
                            <input type="submit" value="Search">
                        </form>
                    </div>
                    
                    <div class="single-sidebar">
                        <h2 class="sidebar-title">Products</h2>
                        <%
                        List<Recents> r=(List<Recents>)request.getAttribute("recents");
                          for(int i=0;i<r.size() && i<=3;i++){
                        	  String id=r.get(i).getProduct().getPid();
                        	  String name=r.get(i).getProduct().getName();
                        	  int price=r.get(i).getProduct().getPrice();
                        	  double dis=Double.valueOf(r.get(i).getProduct().getDiscount());
  							dis=100-dis;

                        	  out.print("<div class='thubmnail-recent'><img src='./static/img/"+id+".jpg' class='recent-thumb' alt=''><h2><a href='single-product?id="+id+"'>"+name+"</a></h2><div class='product-sidebar-price'><ins>"+price*(dis/100)+"</ins> <del>"+price+"</del></div></div>");
                          }
                        %>
                        <!-- <div class="thubmnail-recent">
                            <img src="./static/img/product-thumb-1.jpg" class="recent-thumb" alt="">
                            <h2><a href="">Sony Smart TV - 2015</a></h2>
                            <div class="product-sidebar-price">
                                <ins>$700.00</ins> <del>$100.00</del>
                            </div>                             
                        </div>
                        <div class="thubmnail-recent">
                            <img src="./static/img/product-thumb-1.jpg" class="recent-thumb" alt="">
                            <h2><a href="">Sony Smart TV - 2015</a></h2>
                            <div class="product-sidebar-price">
                                <ins>$700.00</ins> <del>$100.00</del>
                            </div>                             
                        </div>
                        <div class="thubmnail-recent">
                            <img src="./static/img/product-thumb-1.jpg" class="recent-thumb" alt="">
                            <h2><a href="">Sony Smart TV - 2015</a></h2>
                            <div class="product-sidebar-price">
                                <ins>$700.00</ins> <del>$100.00</del>
                            </div>                             
                        </div>
                        <div class="thubmnail-recent">
                            <img src="./static/img/product-thumb-1.jpg" class="recent-thumb" alt="">
                            <h2><a href="">Sony Smart TV - 2015</a></h2>
                            <div class="product-sidebar-price">
                                <ins>$700.00</ins> <del>$100.00</del>
                            </div>                             
                        </div> -->
                    </div>
                    
                    <div class="single-sidebar">
                        <h2 class="sidebar-title">Recent Posts</h2>
                        <ul>
                            <li><a href="single-product?id=t7">Video game</a></li>
                            <li><a href="single-product?id=t3">Lunch Box</a></li>
                            <li><a href="single-product?id=c1">T shirt</a></li>
                            <li><a href="single-product?id=c2">Pent</a></li>
                            <li><a href="single-product?id=c1">T-Shirt and Pent</a></li>
                        </ul>
                    </div>
                </div>
                
                <div class="col-md-8">
                    <div class="product-content-right">
                        <div class="product-breadcroumb">
                            <a href="./">Home</a>
                            <a href="shop?type=${product.getType()}">${product.getType()}</a>
                            <a href="single-product?id=${product.getPid()}">${product.getName()}</a>
                        </div>
                
                       <!--  <div class="product-gallery">
                                        <img src="./static/img/product-thumb-1.jpg" alt="">
                                        <img src="./static/img/product-thumb-2.jpg" alt="">
                                        <img src="./static/img/product-thumb-3.jpg" alt="">
                                    </div> -->
                         <div class="row">
                            <div class="col-sm-6">
                                <div class="product-images">
                                    <div class="product-main-img">
                                        <img src="./static/img/${product.getPid()}.jpg" alt="">
                                    </div>
                                    
                                    
                                </div>
                            </div>
                            
                            <div class="col-sm-6">
                                <div class="product-inner">
                                    <h2 class="product-name">${product.getName()} </h2>
                                    <div class="product-inner-price">
                                        <ins style="font-size:20px!important;">Rs.${product.getPrice()*0.9}</ins> <del>Rs. ${product.getPrice()}</del>
                                    </div> 
                                    <div class="product-inner-price">
                                        <ins style="font-size:20px!important;">Available Quantity: ${product.getQuantity() }</ins>
                                    </div>     
                                    
                                    <form action="addcart" class="cart">
                                        <!-- <div class="quantity">
                                            <input type="number" size="4" class="input-text qty text" title="Qty" value="1" name="quantity" min="1" step="1">
                                        </div> -->
                                        <input type="hidden" name="id" value="${product.getPid()}">
                                        <button class="add_to_cart_button" type="submit">Add to cart</button>
                                    </form>   
                                    <div class="product-inner-category">
                                        <p>Category: <a href="">Summer</a>. Tags: <a href="">awesome</a>, <a href="">best</a>, <a href="">sale</a>, <a href="">shoes</a>. </p>
                                    </div> 
                                    
                                    <div role="tabpanel">
                                        <ul class="product-tab" role="tablist">
                                            <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">Description</a></li>
                                            <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">Reviews</a></li>
                                        </ul>
                                        <div class="tab-content">
                                            <div role="tabpanel" class="tab-pane fade in active" id="home">
                                                <h2>Product Description</h2> 
                                                <p>${desc}</p> 
                                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tristique, diam in consequat iaculis, est purus iaculis mauris, imperdiet facilisis ante ligula at nulla. Quisque volutpat nulla risus, id maximus ex aliquet ut. Suspendisse potenti. Nulla varius lectus id turpis dignissim porta. Quisque magna arcu, blandit quis felis vehicula, feugiat gravida diam. Nullam nec turpis ligula. Aliquam quis blandit elit, ac sodales nisl. Aliquam eget dolor eget elit malesuada aliquet. In varius lorem lorem, semper bibendum lectus lobortis ac.</p>

                                                <p>Mauris placerat vitae lorem gravida viverra. Mauris in fringilla ex. Nulla facilisi. Etiam scelerisque tincidunt quam facilisis lobortis. In malesuada pulvinar neque a consectetur. Nunc aliquam gravida purus, non malesuada sem accumsan in. Morbi vel sodales libero.</p>
                                            </div>
                                            <div role="tabpanel" class="tab-pane fade" id="profile">
                                                <h2>Reviews</h2>
                                                <div class="submit-review">
                                                    <p><label for="name">Name</label> <input name="name" type="text"></p>
                                                    <p><label for="email">Email</label> <input name="email" type="email"></p>
                                                    <div class="rating-chooser">
                                                        <p>Your rating</p>

                                                        <div class="rating-wrap-post">
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                        </div>
                                                    </div>
                                                    <p><label for="review">Your review</label> <textarea name="review" id="" cols="30" rows="10"></textarea></p>
                                                    <p><input type="submit" value="Submit"></p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    
                                </div>
                            </div>
                        </div> 
                        
                        
                        <div class="related-products-wrapper">
                            <h2 class="related-products-title">Related Products</h2>
                            <div class="related-products-carousel">
                             <%
                             List<Product> p = (List<Product>) request.getAttribute("rel");
 							for(int i=0;i<p.size();i++){
 								System.out.println(p.get(i));
 								out.print("<div class='single-product'><div class='product-f-image'><img src='./static/img/" + p.get(i).getPid()+ ".jpg' style='width:100vw'alt=''><div class='product-hover'><a href='CartController?id=c2' class='add-to-cart-link'><i class='fa fa-shopping-cart'></i> Add to cart</a><a href='single-product?id="+ p.get(i).getPid()+ "' class='view-details-link'><i class='fa fa-link'></i> See details</a></div></div><h2><a href='single-product'>"+ p.get(i).getName() + "</a></h2><div class='product-carousel-price'><ins>Rs. " + (Double.valueOf(p.get(i).getPrice()))*0.9 + "</ins> <del>Rs. "+ p.get(i).getPrice() + "</del></div></div>");
 							}
                             %>
                                <!-- <div class="single-product">
                                    <div class="product-f-image">
                                        <img src="./static/img/product-1.jpg" alt="">
                                        <div class="product-hover">
                                            <a href="" class="add-to-cart-link"><i class="fa fa-shopping-cart"></i> Add to cart</a>
                                            <a href="" class="view-details-link"><i class="fa fa-link"></i> See details</a>
                                        </div>
                                    </div>

                                    <h2><a href="">Sony Smart TV - 2015</a></h2>

                                    <div class="product-carousel-price">
                                        <ins>$700.00</ins> <del>$100.00</del>
                                    </div> 
                                </div>
                                <div class="single-product">
                                    <div class="product-f-image">
                                        <img src="./static/img/product-2.jpg" alt="">
                                        <div class="product-hover">
                                            <a href="" class="add-to-cart-link"><i class="fa fa-shopping-cart"></i> Add to cart</a>
                                            <a href="" class="view-details-link"><i class="fa fa-link"></i> See details</a>
                                        </div>
                                    </div>

                                    <h2><a href="">Apple new mac book 2015 March :P</a></h2>
                                    <div class="product-carousel-price">
                                        <ins>$899.00</ins> <del>$999.00</del>
                                    </div> 
                                </div>
                                <div class="single-product">
                                    <div class="product-f-image">
                                        <img src="./static/img/product-3.jpg" alt="">
                                        <div class="product-hover">
                                            <a href="" class="add-to-cart-link"><i class="fa fa-shopping-cart"></i> Add to cart</a>
                                            <a href="" class="view-details-link"><i class="fa fa-link"></i> See details</a>
                                        </div>
                                    </div>

                                    <h2><a href="">Apple new i phone 6</a></h2>

                                    <div class="product-carousel-price">
                                        <ins>$400.00</ins> <del>$425.00</del>
                                    </div>                                 
                                </div>
                                <div class="single-product">
                                    <div class="product-f-image">
                                        <img src="./static/img/product-4.jpg" alt="">
                                        <div class="product-hover">
                                            <a href="" class="add-to-cart-link"><i class="fa fa-shopping-cart"></i> Add to cart</a>
                                            <a href="" class="view-details-link"><i class="fa fa-link"></i> See details</a>
                                        </div>
                                    </div>

                                    <h2><a href="">Sony playstation microsoft</a></h2>

                                    <div class="product-carousel-price">
                                        <ins>$200.00</ins> <del>$225.00</del>
                                    </div>                            
                                </div>
                                <div class="single-product">
                                    <div class="product-f-image">
                                        <img src="./static/img/product-5.jpg" alt="">
                                        <div class="product-hover">
                                            <a href="" class="add-to-cart-link"><i class="fa fa-shopping-cart"></i> Add to cart</a>
                                            <a href="" class="view-details-link"><i class="fa fa-link"></i> See details</a>
                                        </div>
                                    </div>

                                    <h2><a href="">Sony Smart Air Condtion</a></h2>

                                    <div class="product-carousel-price">
                                        <ins>$1200.00</ins> <del>$1355.00</del>
                                    </div>                                 
                                </div>
                                <div class="single-product">
                                    <div class="product-f-image">
                                        <img src="./static/img/product-6.jpg" alt="">
                                        <div class="product-hover">
                                            <a href="" class="add-to-cart-link"><i class="fa fa-shopping-cart"></i> Add to cart</a>
                                            <a href="" class="view-details-link"><i class="fa fa-link"></i> See details</a>
                                        </div>
                                    </div>

                                    <h2><a href="">Samsung gallaxy note 4</a></h2>

                                    <div class="product-carousel-price">
                                        <ins>$400.00</ins>
                                    </div>                            
                                </div>   -->      
                             <!--    <div class="single-product">
                                <div class="product-f-image">
                                    <img src="./static/img/t3.jpg" alt="">
                                    <div class="product-hover">
                                        <a href="#" class="add-to-cart-link"><i class="fa fa-shopping-cart"></i> Add to cart</a>
                                        <a href="single-product?id=t3" class="view-details-link"><i class="fa fa-link"></i> See details</a>
                                    </div>
                                </div>
                                
                                <h2><a href="single-product">Lunch Box</a></h2>

                                <div class="product-carousel-price">
                                    <ins>Rs. 400.00</ins>
                                </div> </div>  --> 
                                  <%--   <%
                       PrintWriter output =response.getWriter();
                            url = "jdbc:mysql://localhost:3306/kidsstore";
                             con=null;
                    		try {
                    			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
                    			con = DriverManager.getConnection(url, "root",  "");
                    			HttpSession session2=request.getSession();
                    			String type=(String)session2.getAttribute("type");
                    			try (PreparedStatement pstmt = con.prepareStatement("SELECT * FROM product WHERE type=?")) {
                    				pstmt.setString(1,type);
                    				try (ResultSet rs = pstmt.executeQuery()) {
                    					System.out.print("inside rs");
                    	                System.out.print(type);
                    					int count=0;
                    					while (rs.next() && count<6) {
                        					System.out.print("inside while");

                    						count++;
                    		                 id=rs.getString(5);
                    		                String name=rs.getString(1);
                    		                int price=rs.getInt(2);
                    		                PrintWriter ou = response.getWriter();
                    		                ou.print("<div class='single-product'> <div class='product-f-image'><img src='./static/img/"+id+".jpg' alt=''><div class='product-hover'><a href='CartController?id=c2' class='add-to-cart-link'><i class='fa fa-shopping-cart'></i> Add to cart</a><a href='single-product?id="+id+"' class='view-details-link'><i class='fa fa-link'></i> See details</a></div></div><h2><a href='single-product'>"+name+"</a></h2><div class='product-carousel-price'><ins>Rs. "+price*0.9+"</ins> <del>Rs. "+price+"</del></div></div>");
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
                            %>         --%>                    
                            </div>
                        </div>
                    </div>                    
                </div>
            </div>
        </div>
    </div>


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
                            <a href="#" target="_blank"><i class="fa fa-facebook"></i></a>
                            <a href="#" target="_blank"><i class="fa fa-twitter"></i></a>
                            <a href="#" target="_blank"><i class="fa fa-youtube"></i></a>
                            <a href="#" target="_blank"><i class="fa fa-linkedin"></i></a>
                        </div>
                    </div>
                </div>
                
                <div class="col-md-3 col-sm-6">
                    <div class="footer-menu">
                        <h2 class="footer-wid-title">User Navigation </h2>
                        <ul>
                            <li><a href="">My account</a></li>
							<li><a href="orders">Order history</a></li>
                            <li><a href="">Vendor contact</a></li>
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
                        <p>Sign up to our newsletter and get exclusive deals you wont find anywhere else straight to your inbox!</p>
                        <div class="newsletter-form">
                            <input type="email" placeholder="Type your email">
                            <input type="submit" value="Subscribe">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="footer-bottom-area">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <div class="copyright">
                       <p>&copy; 2022 uCommerce. All Rights Reserved. </p>
                    </div>
                </div>
                
                <div class="col-md-4">
                    <div class="footer-card-icon">
                        <i class="fa fa-cc-discover"></i>
                        <i class="fa fa-cc-mastercard"></i>
                        <i class="fa fa-cc-paypal"></i>
                        <i class="fa fa-cc-visa"></i>
                    </div>
                </div>
            </div>
        </div>
    </div>
   
    <!-- Latest jQuery form server -->
    <script src="https://code.jquery.com/jquery.min.js"></script>
    
    <!-- Bootstrap JS form CDN -->
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    
    <!-- jQuery sticky menu -->
    <script src="./static/js/owl.carousel.min.js"></script>
    <script src="./static/js/jquery.sticky.js"></script>
    
    <!-- jQuery easing -->
    <script src="./static/js/jquery.easing.1.3.min.js"></script>
    
    <!-- Main Script -->
    <script src="./static/js/main.js"></script>
  </body>
</html>