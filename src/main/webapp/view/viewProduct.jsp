<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
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
<link rel="stylesheet" href="../static/css/bootstrap.min.css">

<!-- Font Awesome -->
<link rel="stylesheet" href="../static/css/font-awesome.min.css">

<!-- Custom CSS -->
<link rel="stylesheet" href="../static/css/owl.carousel.css">
<link rel="stylesheet" href="../static/css/style.css">
<link rel="stylesheet" href="../static/css/responsive.css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
						<li class="active"><a href="../admin">Products</a></li>
						<li><a href="addProduct">Add Product</a></li>
						<li><a href="manageProduct">Manage Product</a></li>
						<li><a href="logout">Logout</a></li>
						
						<li class="dropdown dropdown-small">
                                <a data-toggle="dropdown" data-hover="dropdown" class="dropdown-toggle" href="#"><span class="key">Category </span><span class="value"> </span><b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                    <li><a href="shop?type=Toy">Toy</a></li>
                                    <li><a href="shop?type=Food">Baby Food</a></li>
                                    <li><a href="shop?type=Cloth">Cloth</a></li>
                                </ul>
                            </li>
						<li><a href="viewproduct">Single Product</a></li>
						<li><a href="#">Others</a></li>
						<li><a href="#">Contact</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
 <div class="single-product-area">
        <div class="zigzag-bottom"></div>
        <div class="container">
            <div class="row">
                
                
                <div class="col-md-12">
                    <div class="product-content-right">
                        <div class="product-breadcroumb">
                            <a href="admin">Home</a>
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
                                        <img src="../static/img/${product.getPid()}.jpg" alt="">
                                    </div>
                                    
                                    
                                </div>
                            </div>
                            
                            <div class="col-sm-6">
                                <div class="product-inner">
                                    <h2 class="product-name">${product.getName()} </h2>
                                    <div class="product-inner-price">
                                        <ins>Rs.${product.getPrice()*(100-product.getDiscount())/100}</ins> <del>Rs. ${product.getPrice()}</del>
                                    </div>    
                                    <h2 class="product-name">Quantity: ${product.getQuantity()} </h2>

                                    <%-- <form action="addcart" class="cart">
                                        <!-- <div class="quantity">
                                            <input type="number" size="4" class="input-text qty text" title="Qty" value="1" name="quantity" min="1" step="1">
                                        </div> -->
                                        <input type="hidden" name="id" value="${product.getPid()}">
                                    </form>   --%> 
                                    
                                    <div class="product-inner-category">
                                        <p>Category: <a href="">Summer</a>. Tags: <a href="">awesome</a>, <a href="">best</a>, <a href="">sale</a>, <a href="">shoes</a>. </p>
                                    </div> 
                                    
                                    <div role="tabpanel">
                                        	
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