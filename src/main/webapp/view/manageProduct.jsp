<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
<style type="text/css">
  .manage{
    width: -webkit-fill-available;
  }
  .form-label{
    padding-top:16px;
  }
  .form-control{
   padding:18px;
  }
  .desc{
    padding-top:5px!important;
    padding-left:8px;
  }
  .submit{
     margin-top:12px;
   }
</style>
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
						<li><a href="./addProduct">Add Product</a></li>
						<li><a href="./manageProduct">Manage Product</a></li>
						<li><a href="logout">Logout</a></li>

						<li class="dropdown dropdown-small"><a data-toggle="dropdown"
							data-hover="dropdown" class="dropdown-toggle" href="#"><span
								class="key">Category </span><span class="value"> </span><b
								class="caret"></b></a>
							<ul class="dropdown-menu">
								<li><a href="shop?type=Toy">Toy</a></li>
								<li><a href="shop?type=Food">Baby Food</a></li>
								<li><a href="shop?type=Cloth">Cloth</a></li>
							</ul></li>
						<li><a href="./viewproduct?id=t1">Single Product</a></li>
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
							<a href="./">Home</a> <a href="shop?type=${product.getType()}">${product.getType()}</a>
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
								<div class="manage container col-2">
									<form action="editProduct" enctype="multipart/form-data"
										method="post">
										<!-- <div class="mb-3">
				<label for="exampleInputUsername" class="form-label fw-bold">Username</label>
				<input type="text" class="form-control" id="exampleInputUsername"
					name="username" placeholder="Username">
					
			</div> -->
                                        <input type="hidden" name="pid" value="${product.getPid() }">
										<div class="mb-3">
											<label for="exampleInputUsername" class="form-label fw-bold">Name</label>
											<input type="text" class="form-control"
												id="exampleInputUsername" name="name"
												value="${product.getName()}">
										</div>
										<div class="mb-3">
											<label for="exampleInputUsername" class="form-label fw-bold">Price</label>
											<input type="text" class="form-control"
												id="exampleInputUsername" name="price"
												value="${product.getPrice() }">
										</div>
										<div class="mb-3">
											<label for="exampleInputUsername" class="form-label fw-bold">Discount</label>
											<input type="text" class="form-control"
												id="exampleInputUsername" name="discount"
												value="${product.getDiscount()}">
										</div>
										<div class="mb-3">
											<label for="exampleInputUsername" class="form-label fw-bold">Quantity</label>
											<input type="text" class="form-control"
												id="exampleInputUsername" name="quantity"
												value="${product.getQuantity()}">
										</div>
										<div class="mb-3">
											<label for="exampleFormControlTextarea1" class="form-label">Description</label>
											<textarea class="desc form-control "
												id="exampleFormControlTextarea1" name="description" rows="3"
												>${product.getDescription() }</textarea>
										</div>
										<div class="mb-3 my-2">
											<label for="exampleInputUsername" class="form-label fw-bold">Type
												of product</label> <input type="text" class="form-control"
												id="exampleInputUsername" name="type"
												value="${product.getType() }">
										</div>
										
										<button type="submit" class="submit btn btn-primary w-100 my-2">Edit
											Product</button>
									</form>
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
	<script
		src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

	<!-- jQuery sticky menu -->
	<script src="./static/js/owl.carousel.min.js"></script>
	<script src="./static/js/jquery.sticky.js"></script>

	<!-- jQuery easing -->
	<script src="./static/js/jquery.easing.1.3.min.js"></script>

	<!-- Main Script -->
	<script src="./static/js/main.js"></script>
</body>
</html>