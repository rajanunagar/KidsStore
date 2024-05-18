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
<link rel="stylesheet" href="./static/css/bootstrap.min.css">
<link rel="stylesheet" href="./static/css/font-awesome.min.css">

<!-- Custom CSS -->
<link rel="stylesheet" href="./static/css/owl.carousel.css">
<link rel="stylesheet" href="./static/css/style.css">
<link rel="stylesheet" href="./static/css/responsive.css">
<style type="text/css">
 .container-fluid{
   margin:14px 25rem;
 }
 .main-content{

   font-size:15px!important;
 }
 .large{
   font-size:19px!important;
 }
 .edit{
  padding: 10px 30px;
  font-size:18px;
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
                        <h1><a href="./"><img src="./static/img/logo.png"></a></h1>
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
						<li><a href="./">Home</a></li>
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
						<li class="active"><a href="viewProfile">My Profile</a></li>
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
                        <h2 style="padding:30px!important">My Account</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>
  <div class="main-content">
      <div class="container-fluid">

        <div class="col-xl-8 order-xl-1">
          <div class="card bg-secondary shadow">
            <div class="card-header bg-white border-0">
              <div class="row align-items-center">
                
                
              </div>
            </div>
            <div class="card-body">
              <form action="editProfile" method="post">
                <h3 class="text-muted  mb-4">User information</h3>
                <div class="pl-lg-4">
                  <div class="row">
                    <div class="col-lg-6">
                      <div class="form-group focused">
                        <label class="form-control-label" for="input-username">Name</label>
                        <input type="text" id="input-username" class="form-control form-control-alternative" placeholder="name" name="name"value="${user.getName() }">
                      </div>
                    </div>
                    <div class="col-lg-6">
                      <div class="form-group">
                        <label class="form-control-label" for="input-email">Email address</label>
                        <input type="email" id="input-email" class="form-control form-control-alternative" name="email"value="${user.getEmail() }">
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-lg-6">
                      <div class="form-group focused">
                    
                        <label class="form-control-label" for="input-first-name">Date of birth</label>
                        <input type="text" id="input-first-name" class="form-control form-control-alternative" name="DOB" placeholder="First name" value="${user.getDOB() }">
                      </div>
                    </div>
                    <div class="col-lg-6">
                      <div class="form-group focused">
                        <label class="form-control-label" for="input-last-name">Phone no</label>
                        <input type="text" id="input-last-name" class="form-control form-control-alternative" name="phoneno"placeholder="Last name" value="${user.getPhoneno() }">
                      </div>
                    </div>
                  </div>
                </div>
                <hr class="my-4">
                <!-- Address -->
                <h2 class="heading-small text-muted mb-4">Contact information</h2>
                <div class="pl-lg-4">
                  <div class="row">
                    <div class="col-md-12">
                      <div class="form-group focused">
                        <label class="form-control-label" for="input-address">Address</label>
                        <input id="input-address" class="form-control form-control-alternative" placeholder="Home Address"name="street" value="${address.getStreet() }" type="text">
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-lg-4">
                      <div class="form-group focused">
                        <label class="form-control-label" for="input-city">City</label>
                        <input type="text" id="input-city" class="form-control form-control-alternative" placeholder="City"name="city" value="${address.getCity() }">
                      </div>
                    </div>
                    <div class="col-lg-4">
                      <div class="form-group focused">
                        <label class="form-control-label" for="input-country">Country</label>
                        <input type="text" id="input-country" class="form-control form-control-alternative" placeholder="country"name="country" value="${address.getCountry()}">
                      </div>
                    </div>
                    <div class="col-lg-4">
                      <div class="form-group">
                        <label class="form-control-label" for="input-country">Postal code</label>
                        <input type="number" id="input-postal-code" class="form-control form-control-alternative" placeholder="pincode" name="pincode"value="${address.getPincode() }">
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-12 py-2 text-center">
                   <input type="submit" class="btn btn-primary"value="Edit Profile">
<!--                   <a href="#!" class="edit btn  btn-primary">Edit Profile</a>
 -->                </div>
              </form>
            </div>
          </div>
          </div>
          </div>
</body>
</html>