<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
	<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js"
	integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT"
	crossorigin="anonymous"></script>
<link href="../static/css/bootstrap.css" rel="stylesheet" />
        <link href="../static/css/font-awesome.css" rel="stylesheet" />
        <link href="../static/css/style1.css" rel="stylesheet" />
        <link href="../static/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <link href="../static/css/style.css" rel="stylesheet" type="text/css" media="all" />
<style type="text/css">
.panel-heading,.container{
width:auto!important];
}
</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<!-- <div class="site-branding-area">
		<div class="container">
			<div class="row">
				<div class="col-sm-6">
					<div class="logo">
						<h1>
							<a href="./"><img src="./static/img/logo.png"></a>
						</h1>
					</div>
				</div>

				
			</div>
		</div>
	</div>
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
						<li><a href="addProduct">Add Product</a></li>
						<li><a href="manageProduct">Manage Product</a></li>
						<li><a href="cart">Cart</a></li>
						
						<li class="dropdown dropdown-small">
                                <a data-toggle="dropdown" data-hover="dropdown" class="dropdown-toggle" href="#"><span class="key">Category </span><span class="value"> </span><b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                    <li><a href="shop?type=Toy">Toy</a></li>
                                    <li><a href="shop?type=Food">Baby Food</a></li>
                                    <li><a href="shop?type=Cloth">Cloth</a></li>
                                </ul>
                            </li>
						<li><a href="checkout">Checkout</a></li>
						<li><a href="#">Others</a></li>
						<li><a href="#">Contact</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div> -->
	<!-- End mainmenu area -->
	<div class="content-wrapper">
                <div class="container">
                <div class="row">
                    <div class="col-md-8 container">
                        <div class="panel panel-info">
                            <div class="panel-heading d-flex container" style="width:auto;">Add Product<a href="../admin" class="btn btn-primary ml-4" style="margin-left:70%")>Back to Products</a>
                            </div>
                            
                            <div class="panel-body">
                                <form role="form" action="../NewProduct" method="post"
                                      enctype="multipart/form-data">
                                      <input type="hidden" name="username"value="${user.getUsername() }">
                                      <input type="hidden" name="address" value="${user.getAddress() }">
                                    <div class="form-group">
                                        <label>Enter Name</label> <input class="form-control" type="text" name="name" required />
                                    </div>
                                    <div class="form-group">
                                        <label>Price</label> <input class="form-control" type="number" name="price" required/>
                                    </div>
                                    <div class="form-group">
                                        <label>Description</label> <input class="form-control" type="text" style="min-height: 100px;" name="description" required/>
                                    </div>

                                    <!-- <div class="form-group">
                                        <label>Status</label> 
                                        <select class="form-control" name="status" required>
                                            <option>Active</option>
                                            <option>In-Active</option>
                                        </select>
                                    </div> -->
                                    <div class="form-group">
                                        <label>Product Category</label> <input class="form-control" type="text" name="type" required/>
                                    </div>
 <div class="form-group">
                                        <label>Product Discount</label> <input class="form-control" type="text" name="discount" required/>
                                    </div>
                                     <div class="form-group">
                                        <label>Product Quantity</label> <input class="form-control" type="text" name="quantity" required/>
                                    </div>
                                    <div class="form-group">
                                        <label>Attach Product Image</label> <input type="file" name="image" required/>
                                    </div>

                                    <button type="submit" class="btn btn-success" onclick="return confirm('Are you sure Do you want to add this product?');">Add Product</button>
                                    <button type="reset" class="btn btn-danger">Reset</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

	<!-- <div class="container text-center py-15">
	<br>
				<a href="../admin" class="btn btn-primary">Back to Products</a>
	</div>
	<h1 class="text-center text-secondary my-5">Enter details</h1>
	<div class="container col-3 py-5 px-4">
		<form action="NewProduct"  enctype = "multipart/form-data"method="post">
			<div class="mb-3">
				<label for="exampleInputUsername" class="form-label fw-bold">Username</label>
				<input type="text" class="form-control" id="exampleInputUsername"
					name="username" placeholder="Username">
					
			</div>
			<div class="mb-3">
				<label for="exampleInputUsername" class="form-label fw-bold">Product
					Id</label> <input type="text" class="form-control"
					id="exampleInputUsername" name="pid" placeholder="Product id">
			</div>
			<div class="mb-3">
				<label for="exampleInputUsername" class="form-label fw-bold">Name</label>
				<input type="text" class="form-control" id="exampleInputUsername"
					name="name" placeholder="Name">
			</div>
			<div class="mb-3">
				<label for="exampleInputUsername" class="form-label fw-bold">Price</label>
				<input type="text" class="form-control" id="exampleInputUsername"
					name="price" placeholder="Price">
			</div>
			<div class="mb-3">
				<label for="exampleFormControlTextarea1" class="form-label">Description</label>
				<textarea class="form-control" id="exampleFormControlTextarea1"
					name="description" rows="3"></textarea>
			</div>
			<div class="mb-3">
				<label for="exampleInputUsername" class="form-label fw-bold">Type
					of product</label> <input type="text" class="form-control"
					id="exampleInputUsername" name="type" placeholder="Type">
			</div>
			<div class="custom-file mb-3">
				<input type="file" class="custom-file-input" name="image"id="customFile">
				<label class="custom-file-label" for="customFile">Choose
					file</label>
			</div>
			<button type="submit" class="btn btn-primary w-100 my-2">Add
				Product</button>
		</form>
	</div> -->
	<script>
		// Add the following code if you want the name of the file appear on select
		$(".custom-file-input").on(
				"change",
				function() {
					var fileName = $(this).val().split("\\").pop();
					$(this).siblings(".custom-file-label").addClass("selected")
							.html(fileName);
				});
	</script>
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