<!DOCTYPE html>
<!--
	ustora by freshdesignweb.com
	Twitter: https://twitter.com/freshdesignweb
	URL: https://www.freshdesignweb.com/ustora/
-->
<%@page import="com.kidsstore.Kidsstore.entities.Recents"%>
<%@page import="java.util.List"%>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Checkout Page - KidsStore</title>

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
							<li><a href="#"><i class="fa fa-user"></i> My Account</a></li>
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
							<li><a href="logout"><i class="fa fa-sign-out"></i>
									Logout</a></li>

						</ul>
					</div>
				</div>

				<div class="col-md-4">
					<div class="header-right">
						<ul class="list-unstyled list-inline">
							<!--  <li class="dropdown dropdown-small">
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
									<li><a href="#">French</a></li>
									<li><a href="#">German</a></li>
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
						<li><a href="./">Home</a></li>
						<li><a href="shop?type=all">Shop page</a></li>
						<li><a href="single-product?id=c2">Single product</a></li>
						<li><a href="cart">Cart</a></li>
						<li class="active"><a href="checkout">Checkout</a></li>
						<li class="dropdown dropdown-small"><a data-toggle="dropdown"
							data-hover="dropdown" class="dropdown-toggle" href="#"><span
								class="key">Category </span><span class="value"> </span><b
								class="caret"></b></a>
							<ul class="dropdown-menu">
								<li><a href="shop?type=Toy">Toy</a></li>
								<li><a href="shop?type=Food">Baby Food</a></li>
								<li><a href="shop?type=Cloth">Cloth</a></li>
							</ul></li>
						<li><a href="orders">Orders</a></li>
                        <li><a href="viewProfile">My Profile</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<!-- End mainmenu area -->

	<div class="product-big-title-area">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="product-bit-title text-center">
						<h2>Shopping Cart</h2>
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
							<input type="text" placeholder="Search products..."> <input
								type="submit" value="Search">
						</form>
					</div>

					<div class="single-sidebar">
						<h2 class="sidebar-title">Products</h2>
						<%
						List<Recents> r = (List<Recents>) request.getAttribute("recents");
						if (r != null) {
							for (int i = 0; i < r.size() && i <= 3; i++) {
								String id = r.get(i).getProduct().getPid();
								String name = r.get(i).getProduct().getName();
								int price = r.get(i).getProduct().getPrice();
								double dis = Double.valueOf(r.get(i).getProduct().getDiscount());
								dis = 100 - dis;

								out.print("<div class='thubmnail-recent'><img src='./static/img/" + id
								+ ".jpg' class='recent-thumb' alt=''><h2><a href=''>" + name
								+ "</a></h2><div class='product-sidebar-price'><ins>" + price * (dis / 100) + "</ins> <del>" + price
								+ "</del></div></div>");
							}
						} else {
						%>
						<div class="thubmnail-recent">
							<img src="./static/img/c1.jpg" class="recent-thumb" alt="">
							<h2>
								<a href="single-product?id=c1">T-shirt</a>
							</h2>
							<div class="product-sidebar-price">
								<ins>Rs.174.6</ins>
								<del>Rs. 180</del>
							</div>
						</div>
						<div class="thubmnail-recent">
							<img src="./static/img/c2.jpg" class="recent-thumb" alt="">
							<h2>
								<a href="single-product?id=c2">Pent</a>
							</h2>
							<div class="product-sidebar-price">
								<ins>Rs.135.0</ins>
								<del>Rs.150</del>
							</div>
						</div>
						<div class="thubmnail-recent">
							<img src="./static/img/t1.jpg" class="recent-thumb" alt="">
							<h2>
								<a href="single-product?id=t1">Toy</a>
							</h2>
							<div class="product-sidebar-price">
								<ins>Rs. 138.0</ins>
								<del>Rs. 150</del>
							</div>
						</div>
						<div class="thubmnail-recent">
							<img src="./static/img/t7.jpg" class="recent-thumb" alt="">
							<h2>
								<a href="single-product?id=t7">Video game</a>
							</h2>
							<div class="product-sidebar-price">
								<ins>Rs. 190.0</ins>
								<del>Rs. 200</del>
							</div>
						</div>
						<%
						}
						%>
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
						<div class="woocommerce">
							<div class="woocommerce-info">
								Returning customer? <a class="showlogin" data-toggle="collapse"
									href="#login-form-wrap" aria-expanded="false"
									aria-controls="login-form-wrap">Click here to login</a>
							</div>

							<form id="login-form-wrap" class="login collapse" method="post"
								action="viewOrder">


								<p>If you have shopped with us before, please enter your
									details in the boxes below. If you are a new customer please
									proceed to the Billing &amp; Shipping section.</p>

								<p class="form-row form-row-first">
									<label for="username">Username or email <span
										class="required">*</span>
									</label> <input type="text" id="username" name="username"
										class="input-text">
								</p>
								<p class="form-row form-row-last">
									<label for="password">Password <span class="required">*</span>
									</label> <input type="password" id="password" name="password"
										class="input-text">
								</p>
								<div class="clear"></div>


								<p class="form-row">
									<input type="submit" value="Login" name="login" class="button">
									<label class="inline" for="rememberme"><input
										type="checkbox" value="forever" id="rememberme"
										name="rememberme"> Remember me </label>
								</p>
								<p class="lost_password">
									<a href="#">Lost your password?</a>
								</p>

								<div class="clear"></div>
							</form>

							<div class="woocommerce-info">
								Have a coupon? <a class="showcoupon" data-toggle="collapse"
									href="#coupon-collapse-wrap" aria-expanded="false"
									aria-controls="coupon-collapse-wrap">Click here to enter
									your code</a>
							</div>

							<form id="coupon-collapse-wrap" method="post"
								class="checkout_coupon collapse">

								<p class="form-row form-row-first">
									<input type="text" id="coupon_code" placeholder="Coupon code"
										class="input-text" name="coupon_code">
								</p>

								<p class="form-row form-row-last">
									<input type="submit" value="Apply Coupon" name="apply_coupon"
										class="button">
								</p>

								<div class="clear"></div>
							</form>

							<form enctype="multipart/form-data" action="viewOrder"
								class="checkout" method="post" name="checkout">

								<div id="customer_details" class="col2-set">
									<div class="col-1">
										<div class="woocommerce-billing-fields">
											<h3>Billing Details</h3>
											<p id="billing_email_field"
												class="form-row form-row-first validate-required validate-email">
												<label class="" for="billing_email">Customer Id <abbr
													title="required" class="required">*</abbr>
												</label> <input type="text" value="${username}" placeholder=""
													id="billing_email" name="cid" class="input-text ">
											</p>
											<p id="billing_country_field"
												class="form-row form-row-wide address-field update_totals_on_change validate-required woocommerce-validated">
												<label class="" for="billing_country">Country <abbr
													title="required" class="required">*</abbr>
												</label> <select class="country_to_state country_select"
													id="billing_country" name="bcountry"
													value="${address.getCountry()}">
													<option>Select a country…</option>
													<option value="AX">Åland Islands</option>
													<option value="AF">Afghanistan</option>
													<option value="AL">Albania</option>
													<option value="DZ">Algeria</option>
													<option value="AD">Andorra</option>
													<option value="AO">Angola</option>
													<option value="AI">Anguilla</option>
													<option value="AQ">Antarctica</option>
													<option value="AG">Antigua and Barbuda</option>
													<option value="AR">Argentina</option>
													<option value="AM">Armenia</option>
													<option value="AW">Aruba</option>
													<option value="AU">Australia</option>
													<option value="AT">Austria</option>
													<option value="AZ">Azerbaijan</option>
													<option value="BS">Bahamas</option>
													<option value="BH">Bahrain</option>
													<option value="BD">Bangladesh</option>
													<option value="BB">Barbados</option>
													<option value="BY">Belarus</option>
													<option value="PW">Belau</option>
													<option value="BE">Belgium</option>
													<option value="BZ">Belize</option>
													<option value="BJ">Benin</option>
													<option value="BM">Bermuda</option>
													<option value="BT">Bhutan</option>
													<option value="BO">Bolivia</option>
													<option value="BQ">Bonaire, Saint Eustatius and
														Saba</option>
													<option value="BA">Bosnia and Herzegovina</option>
													<option value="BW">Botswana</option>
													<option value="BV">Bouvet Island</option>
													<option value="BR">Brazil</option>
													<option value="IO">British Indian Ocean Territory</option>
													<option value="VG">British Virgin Islands</option>
													<option value="BN">Brunei</option>
													<option value="BG">Bulgaria</option>
													<option value="BF">Burkina Faso</option>
													<option value="BI">Burundi</option>
													<option value="KH">Cambodia</option>
													<option value="CM">Cameroon</option>
													<option value="CA">Canada</option>
													<option value="CV">Cape Verde</option>
													<option value="KY">Cayman Islands</option>
													<option value="CF">Central African Republic</option>
													<option value="TD">Chad</option>
													<option value="CL">Chile</option>
													<option value="CN">China</option>
													<option value="CX">Christmas Island</option>
													<option value="CC">Cocos (Keeling) Islands</option>
													<option value="CO">Colombia</option>
													<option value="KM">Comoros</option>
													<option value="CG">Congo (Brazzaville)</option>
													<option value="CD">Congo (Kinshasa)</option>
													<option value="CK">Cook Islands</option>
													<option value="CR">Costa Rica</option>
													<option value="HR">Croatia</option>
													<option value="CU">Cuba</option>
													<option value="CW">CuraÇao</option>
													<option value="CY">Cyprus</option>
													<option value="CZ">Czech Republic</option>
													<option value="DK">Denmark</option>
													<option value="DJ">Djibouti</option>
													<option value="DM">Dominica</option>
													<option value="DO">Dominican Republic</option>
													<option value="EC">Ecuador</option>
													<option value="EG">Egypt</option>
													<option value="SV">El Salvador</option>
													<option value="GQ">Equatorial Guinea</option>
													<option value="ER">Eritrea</option>
													<option value="EE">Estonia</option>
													<option value="ET">Ethiopia</option>
													<option value="FK">Falkland Islands</option>
													<option value="FO">Faroe Islands</option>
													<option value="FJ">Fiji</option>
													<option value="FI">Finland</option>
													<option value="FR">France</option>
													<option value="GF">French Guiana</option>
													<option value="PF">French Polynesia</option>
													<option value="TF">French Southern Territories</option>
													<option value="GA">Gabon</option>
													<option value="GM">Gambia</option>
													<option value="GE">Georgia</option>
													<option value="DE">Germany</option>
													<option value="GH">Ghana</option>
													<option value="GI">Gibraltar</option>
													<option value="GR">Greece</option>
													<option value="GL">Greenland</option>
													<option value="GD">Grenada</option>
													<option value="GP">Guadeloupe</option>
													<option value="GT">Guatemala</option>
													<option value="GG">Guernsey</option>
													<option value="GN">Guinea</option>
													<option value="GW">Guinea-Bissau</option>
													<option value="GY">Guyana</option>
													<option value="HT">Haiti</option>
													<option value="HM">Heard Island and McDonald
														Islands</option>
													<option value="HN">Honduras</option>
													<option value="HK">Hong Kong</option>
													<option value="HU">Hungary</option>
													<option value="IS">Iceland</option>
													<option value="IN">India</option>
													<option value="ID">Indonesia</option>
													<option value="IR">Iran</option>
													<option value="IQ">Iraq</option>
													<option value="IM">Isle of Man</option>
													<option value="IL">Israel</option>
													<option value="IT">Italy</option>
													<option value="CI">Ivory Coast</option>
													<option value="JM">Jamaica</option>
													<option value="JP">Japan</option>
													<option value="JE">Jersey</option>
													<option value="JO">Jordan</option>
													<option value="KZ">Kazakhstan</option>
													<option value="KE">Kenya</option>
													<option value="KI">Kiribati</option>
													<option value="KW">Kuwait</option>
													<option value="KG">Kyrgyzstan</option>
													<option value="LA">Laos</option>
													<option value="LV">Latvia</option>
													<option value="LB">Lebanon</option>
													<option value="LS">Lesotho</option>
													<option value="LR">Liberia</option>
													<option value="LY">Libya</option>
													<option value="LI">Liechtenstein</option>
													<option value="LT">Lithuania</option>
													<option value="LU">Luxembourg</option>
													<option value="MO">Macao S.A.R., China</option>
													<option value="MK">Macedonia</option>
													<option value="MG">Madagascar</option>
													<option value="MW">Malawi</option>
													<option value="MY">Malaysia</option>
													<option value="MV">Maldives</option>
													<option value="ML">Mali</option>
													<option value="MT">Malta</option>
													<option value="MH">Marshall Islands</option>
													<option value="MQ">Martinique</option>
													<option value="MR">Mauritania</option>
													<option value="MU">Mauritius</option>
													<option value="YT">Mayotte</option>
													<option value="MX">Mexico</option>
													<option value="FM">Micronesia</option>
													<option value="MD">Moldova</option>
													<option value="MC">Monaco</option>
													<option value="MN">Mongolia</option>
													<option value="ME">Montenegro</option>
													<option value="MS">Montserrat</option>
													<option value="MA">Morocco</option>
													<option value="MZ">Mozambique</option>
													<option value="MM">Myanmar</option>
													<option value="NA">Namibia</option>
													<option value="NR">Nauru</option>
													<option value="NP">Nepal</option>
													<option value="NL">Netherlands</option>
													<option value="AN">Netherlands Antilles</option>
													<option value="NC">New Caledonia</option>
													<option value="NZ">New Zealand</option>
													<option value="NI">Nicaragua</option>
													<option value="NE">Niger</option>
													<option value="NG">Nigeria</option>
													<option value="NU">Niue</option>
													<option value="NF">Norfolk Island</option>
													<option value="KP">North Korea</option>
													<option value="NO">Norway</option>
													<option value="OM">Oman</option>
													<option value="PK">Pakistan</option>
													<option value="PS">Palestinian Territory</option>
													<option value="PA">Panama</option>
													<option value="PG">Papua New Guinea</option>
													<option value="PY">Paraguay</option>
													<option value="PE">Peru</option>
													<option value="PH">Philippines</option>
													<option value="PN">Pitcairn</option>
													<option value="PL">Poland</option>
													<option value="PT">Portugal</option>
													<option value="QA">Qatar</option>
													<option value="IE">Republic of Ireland</option>
													<option value="RE">Reunion</option>
													<option value="RO">Romania</option>
													<option value="RU">Russia</option>
													<option value="RW">Rwanda</option>
													<option value="ST">São Tomé and Príncipe</option>
													<option value="BL">Saint Barthélemy</option>
													<option value="SH">Saint Helena</option>
													<option value="KN">Saint Kitts and Nevis</option>
													<option value="LC">Saint Lucia</option>
													<option value="SX">Saint Martin (Dutch part)</option>
													<option value="MF">Saint Martin (French part)</option>
													<option value="PM">Saint Pierre and Miquelon</option>
													<option value="VC">Saint Vincent and the
														Grenadines</option>
													<option value="SM">San Marino</option>
													<option value="SA">Saudi Arabia</option>
													<option value="SN">Senegal</option>
													<option value="RS">Serbia</option>
													<option value="SC">Seychelles</option>
													<option value="SL">Sierra Leone</option>
													<option value="SG">Singapore</option>
													<option value="SK">Slovakia</option>
													<option value="SI">Slovenia</option>
													<option value="SB">Solomon Islands</option>
													<option value="SO">Somalia</option>
													<option value="ZA">South Africa</option>
													<option value="GS">South Georgia/Sandwich Islands</option>
													<option value="KR">South Korea</option>
													<option value="SS">South Sudan</option>
													<option value="ES">Spain</option>
													<option value="LK">Sri Lanka</option>
													<option value="SD">Sudan</option>
													<option value="SR">Suriname</option>
													<option value="SJ">Svalbard and Jan Mayen</option>
													<option value="SZ">Swaziland</option>
													<option value="SE">Sweden</option>
													<option value="CH">Switzerland</option>
													<option value="SY">Syria</option>
													<option value="TW">Taiwan</option>
													<option value="TJ">Tajikistan</option>
													<option value="TZ">Tanzania</option>
													<option value="TH">Thailand</option>
													<option value="TL">Timor-Leste</option>
													<option value="TG">Togo</option>
													<option value="TK">Tokelau</option>
													<option value="TO">Tonga</option>
													<option value="TT">Trinidad and Tobago</option>
													<option value="TN">Tunisia</option>
													<option value="TR">Turkey</option>
													<option value="TM">Turkmenistan</option>
													<option value="TC">Turks and Caicos Islands</option>
													<option value="TV">Tuvalu</option>
													<option value="UG">Uganda</option>
													<option value="UA">Ukraine</option>
													<option value="AE">United Arab Emirates</option>
													<option selected="selected" value="GB">United
														Kingdom (UK)</option>
													<option value="US">United States (US)</option>
													<option value="UY">Uruguay</option>
													<option value="UZ">Uzbekistan</option>
													<option value="VU">Vanuatu</option>
													<option value="VA">Vatican</option>
													<option value="VE">Venezuela</option>
													<option value="VN">Vietnam</option>
													<option value="WF">Wallis and Futuna</option>
													<option value="EH">Western Sahara</option>
													<option value="WS">Western Samoa</option>
													<option value="YE">Yemen</option>
													<option value="ZM">Zambia</option>
													<option value="ZW">Zimbabwe</option>
												</select>
											</p>

											<p id="billing_first_name_field"
												class="form-row form-row-first validate-required">
												<label class="" for="billing_first_name">First Name
													<abbr title="required" class="required">*</abbr>
												</label> <input type="text" placeholder="" id="billing_first_name"
													name="billing_first_name" class="input-text "
													value="${user.getName()}">
											</p>

											<p id="billing_last_name_field"
												class="form-row form-row-last validate-required">
												<label class="" for="billing_last_name">Last Name <abbr
													title="required" class="required">*</abbr>
												</label> <input type="text" placeholder="" id="billing_last_name"
													name="billing_last_name" class="input-text ">
											</p>
											<div class="clear"></div>

											<p id="billing_company_field" class="form-row form-row-wide">
												<label class="" for="billing_company">Company Name</label> <input
													type="text" placeholder="" id="billing_company"
													name="bcompany" class="input-text ">
											</p>

											<p id="billing_address_1_field"
												class="form-row form-row-wide address-field validate-required">
												<label class="" for="billing_address_1">Address <abbr
													title="required" class="required">*</abbr>
												</label> <input type="text" placeholder="Street address"
													id="billing_address_1" name="bstreet" class="input-text "
													value="${address.getStreet() }">
											</p>

											<p id="billing_address_2_field"
												class="form-row form-row-wide address-field">
												<input type="text"
													placeholder="Apartment, suite, unit etc. (optional)"
													id="billing_address_2" name="baddress2" class="input-text "
													value="${address.getAddress2() }">
											</p>

											<p id="billing_city_field"
												class="form-row form-row-wide address-field validate-required"
												data-o_class="form-row form-row-wide address-field validate-required">
												<label class="" for="billing_city">Town / City <abbr
													title="required" class="required">*</abbr>
												</label> <input type="text" placeholder="Town / City"
													id="billing_city" name="bcity" class="input-text "
													value="${address.getCity() }">
											</p>

											<p id="billing_state_field"
												class="form-row form-row-first address-field validate-state"
												data-o_class="form-row form-row-first address-field validate-state">
												<label class="" for="billing_state">State</label> <input
													type="text" id="billing_state" name="bstate"
													placeholder="State / County" class="input-text "
													value="${address.getState()}">
											</p>
											<p id="billing_postcode_field"
												class="form-row form-row-last address-field validate-required validate-postcode"
												data-o_class="form-row form-row-last address-field validate-required validate-postcode">
												<label class="" for="billing_postcode">Postcode <abbr
													title="required" class="required"">*</abbr>
												</label> <input type="text" placeholder="Postcode / Zip"
													id="billing_postcode" name="bpostcode"
													value="${address.getPincode()}" required
													class="input-text ">
											</p>

											<div class="clear"></div>

											<!--                                           <p id="billing_email_field" class="form-row form-row-first validate-required validate-email">
                                                <label class="" for="billing_email">Email Address <abbr title="required" class="required">*</abbr>
                                                </label>
                                                <input type="text"   placeholder="" id="billing_email" name="billing_email" class="input-text ">
                                            </p>

                                            <p id="billing_phone_field" class="form-row form-row-last validate-required validate-phone">
                                                <label class="" for="billing_phone">Phone <abbr title="required" class="required">*</abbr>
                                                </label>
                                                <input type="text"   placeholder="" id="billing_phone" name="billing_phone" class="input-text ">
                                            </p> -->
											<div class="clear"></div>


											<div class="create-account">
												<p>Create an account by entering the information below.
													If you are a returning customer please login at the top of
													the page.</p>
												<p id="account_password_field"
													class="form-row validate-required">
													<label class="" for="account_password">Account
														password <abbr title="required" class="required">*</abbr>
													</label> <input type="password" placeholder="Password"
														id="account_password" name="account_password"
														class="input-text">
												</p>
												<div class="clear"></div>
											</div>

										</div>
									</div>

									<div class="col-2">
										<div class="woocommerce-shipping-fields">
											<h3 id="ship-to-different-address">
												<label class="checkbox"
													for="ship-to-different-address-checkbox">Ship to a
													different address?</label> <input type="checkbox" value="1"
													name="ship_to_different_address" checked="checked"
													class="input-checkbox"
													id="ship-to-different-address-checkbox">
											</h3>
											<p id="billing_email_field"
												class="form-row form-row-first validate-required validate-email">
												<label class="" for="billing_email">Customer Id <abbr
													title="required" class="required">*</abbr>
												</label> <input type="text" value="${username}" placeholder=""
													id="billing_email" name="scid" class="input-text ">
											</p>
											<div class="shipping_address" style="display: block;">
												<p id="shipping_country_field"
													class="form-row form-row-wide address-field update_totals_on_change validate-required woocommerce-validated">
													<label class="" for="shipping_country">Country <abbr
														title="required" class="required">*</abbr>
													</label> <select class="country_to_state country_select"
														id="shipping_country" name="scountry">
														<option selected value="${address.getCountry()}">Select
															a country</option>
														<option value="AX">Åland Islands</option>
														<option value="AF">Afghanistan</option>
														<option value="AL">Albania</option>
														<option value="DZ">Algeria</option>
														<option value="AD">Andorra</option>
														<option value="AO">Angola</option>
														<option value="AI">Anguilla</option>
														<option value="AQ">Antarctica</option>
														<option value="AG">Antigua and Barbuda</option>
														<option value="AR">Argentina</option>
														<option value="AM">Armenia</option>
														<option value="AW">Aruba</option>
														<option value="AU">Australia</option>
														<option value="AT">Austria</option>
														<option value="AZ">Azerbaijan</option>
														<option value="BS">Bahamas</option>
														<option value="BH">Bahrain</option>
														<option value="BD">Bangladesh</option>
														<option value="BB">Barbados</option>
														<option value="BY">Belarus</option>
														<option value="PW">Belau</option>
														<option value="BE">Belgium</option>
														<option value="BZ">Belize</option>
														<option value="BJ">Benin</option>
														<option value="BM">Bermuda</option>
														<option value="BT">Bhutan</option>
														<option value="BO">Bolivia</option>
														<option value="BQ">Bonaire, Saint Eustatius and
															Saba</option>
														<option value="BA">Bosnia and Herzegovina</option>
														<option value="BW">Botswana</option>
														<option value="BV">Bouvet Island</option>
														<option value="BR">Brazil</option>
														<option value="IO">British Indian Ocean Territory</option>
														<option value="VG">British Virgin Islands</option>
														<option value="BN">Brunei</option>
														<option value="BG">Bulgaria</option>
														<option value="BF">Burkina Faso</option>
														<option value="BI">Burundi</option>
														<option value="KH">Cambodia</option>
														<option value="CM">Cameroon</option>
														<option value="CA">Canada</option>
														<option value="CV">Cape Verde</option>
														<option value="KY">Cayman Islands</option>
														<option value="CF">Central African Republic</option>
														<option value="TD">Chad</option>
														<option value="CL">Chile</option>
														<option value="CN">China</option>
														<option value="CX">Christmas Island</option>
														<option value="CC">Cocos (Keeling) Islands</option>
														<option value="CO">Colombia</option>
														<option value="KM">Comoros</option>
														<option value="CG">Congo (Brazzaville)</option>
														<option value="CD">Congo (Kinshasa)</option>
														<option value="CK">Cook Islands</option>
														<option value="CR">Costa Rica</option>
														<option value="HR">Croatia</option>
														<option value="CU">Cuba</option>
														<option value="CW">CuraÇao</option>
														<option value="CY">Cyprus</option>
														<option value="CZ">Czech Republic</option>
														<option value="DK">Denmark</option>
														<option value="DJ">Djibouti</option>
														<option value="DM">Dominica</option>
														<option value="DO">Dominican Republic</option>
														<option value="EC">Ecuador</option>
														<option value="EG">Egypt</option>
														<option value="SV">El Salvador</option>
														<option value="GQ">Equatorial Guinea</option>
														<option value="ER">Eritrea</option>
														<option value="EE">Estonia</option>
														<option value="ET">Ethiopia</option>
														<option value="FK">Falkland Islands</option>
														<option value="FO">Faroe Islands</option>
														<option value="FJ">Fiji</option>
														<option value="FI">Finland</option>
														<option value="FR">France</option>
														<option value="GF">French Guiana</option>
														<option value="PF">French Polynesia</option>
														<option value="TF">French Southern Territories</option>
														<option value="GA">Gabon</option>
														<option value="GM">Gambia</option>
														<option value="GE">Georgia</option>
														<option value="DE">Germany</option>
														<option value="GH">Ghana</option>
														<option value="GI">Gibraltar</option>
														<option value="GR">Greece</option>
														<option value="GL">Greenland</option>
														<option value="GD">Grenada</option>
														<option value="GP">Guadeloupe</option>
														<option value="GT">Guatemala</option>
														<option value="GG">Guernsey</option>
														<option value="GN">Guinea</option>
														<option value="GW">Guinea-Bissau</option>
														<option value="GY">Guyana</option>
														<option value="HT">Haiti</option>
														<option value="HM">Heard Island and McDonald
															Islands</option>
														<option value="HN">Honduras</option>
														<option value="HK">Hong Kong</option>
														<option value="HU">Hungary</option>
														<option value="IS">Iceland</option>
														<option value="IN">India</option>
														<option value="ID">Indonesia</option>
														<option value="IR">Iran</option>
														<option value="IQ">Iraq</option>
														<option value="IM">Isle of Man</option>
														<option value="IL">Israel</option>
														<option value="IT">Italy</option>
														<option value="CI">Ivory Coast</option>
														<option value="JM">Jamaica</option>
														<option value="JP">Japan</option>
														<option value="JE">Jersey</option>
														<option value="JO">Jordan</option>
														<option value="KZ">Kazakhstan</option>
														<option value="KE">Kenya</option>
														<option value="KI">Kiribati</option>
														<option value="KW">Kuwait</option>
														<option value="KG">Kyrgyzstan</option>
														<option value="LA">Laos</option>
														<option value="LV">Latvia</option>
														<option value="LB">Lebanon</option>
														<option value="LS">Lesotho</option>
														<option value="LR">Liberia</option>
														<option value="LY">Libya</option>
														<option value="LI">Liechtenstein</option>
														<option value="LT">Lithuania</option>
														<option value="LU">Luxembourg</option>
														<option value="MO">Macao S.A.R., China</option>
														<option value="MK">Macedonia</option>
														<option value="MG">Madagascar</option>
														<option value="MW">Malawi</option>
														<option value="MY">Malaysia</option>
														<option value="MV">Maldives</option>
														<option value="ML">Mali</option>
														<option value="MT">Malta</option>
														<option value="MH">Marshall Islands</option>
														<option value="MQ">Martinique</option>
														<option value="MR">Mauritania</option>
														<option value="MU">Mauritius</option>
														<option value="YT">Mayotte</option>
														<option value="MX">Mexico</option>
														<option value="FM">Micronesia</option>
														<option value="MD">Moldova</option>
														<option value="MC">Monaco</option>
														<option value="MN">Mongolia</option>
														<option value="ME">Montenegro</option>
														<option value="MS">Montserrat</option>
														<option value="MA">Morocco</option>
														<option value="MZ">Mozambique</option>
														<option value="MM">Myanmar</option>
														<option value="NA">Namibia</option>
														<option value="NR">Nauru</option>
														<option value="NP">Nepal</option>
														<option value="NL">Netherlands</option>
														<option value="AN">Netherlands Antilles</option>
														<option value="NC">New Caledonia</option>
														<option value="NZ">New Zealand</option>
														<option value="NI">Nicaragua</option>
														<option value="NE">Niger</option>
														<option value="NG">Nigeria</option>
														<option value="NU">Niue</option>
														<option value="NF">Norfolk Island</option>
														<option value="KP">North Korea</option>
														<option value="NO">Norway</option>
														<option value="OM">Oman</option>
														<option value="PK">Pakistan</option>
														<option value="PS">Palestinian Territory</option>
														<option value="PA">Panama</option>
														<option value="PG">Papua New Guinea</option>
														<option value="PY">Paraguay</option>
														<option value="PE">Peru</option>
														<option value="PH">Philippines</option>
														<option value="PN">Pitcairn</option>
														<option value="PL">Poland</option>
														<option value="PT">Portugal</option>
														<option value="QA">Qatar</option>
														<option value="IE">Republic of Ireland</option>
														<option value="RE">Reunion</option>
														<option value="RO">Romania</option>
														<option value="RU">Russia</option>
														<option value="RW">Rwanda</option>
														<option value="ST">São Tomé and Príncipe</option>
														<option value="BL">Saint Barthélemy</option>
														<option value="SH">Saint Helena</option>
														<option value="KN">Saint Kitts and Nevis</option>
														<option value="LC">Saint Lucia</option>
														<option value="SX">Saint Martin (Dutch part)</option>
														<option value="MF">Saint Martin (French part)</option>
														<option value="PM">Saint Pierre and Miquelon</option>
														<option value="VC">Saint Vincent and the
															Grenadines</option>
														<option value="SM">San Marino</option>
														<option value="SA">Saudi Arabia</option>
														<option value="SN">Senegal</option>
														<option value="RS">Serbia</option>
														<option value="SC">Seychelles</option>
														<option value="SL">Sierra Leone</option>
														<option value="SG">Singapore</option>
														<option value="SK">Slovakia</option>
														<option value="SI">Slovenia</option>
														<option value="SB">Solomon Islands</option>
														<option value="SO">Somalia</option>
														<option value="ZA">South Africa</option>
														<option value="GS">South Georgia/Sandwich Islands</option>
														<option value="KR">South Korea</option>
														<option value="SS">South Sudan</option>
														<option value="ES">Spain</option>
														<option value="LK">Sri Lanka</option>
														<option value="SD">Sudan</option>
														<option value="SR">Suriname</option>
														<option value="SJ">Svalbard and Jan Mayen</option>
														<option value="SZ">Swaziland</option>
														<option value="SE">Sweden</option>
														<option value="CH">Switzerland</option>
														<option value="SY">Syria</option>
														<option value="TW">Taiwan</option>
														<option value="TJ">Tajikistan</option>
														<option value="TZ">Tanzania</option>
														<option value="TH">Thailand</option>
														<option value="TL">Timor-Leste</option>
														<option value="TG">Togo</option>
														<option value="TK">Tokelau</option>
														<option value="TO">Tonga</option>
														<option value="TT">Trinidad and Tobago</option>
														<option value="TN">Tunisia</option>
														<option value="TR">Turkey</option>
														<option value="TM">Turkmenistan</option>
														<option value="TC">Turks and Caicos Islands</option>
														<option value="TV">Tuvalu</option>
														<option value="UG">Uganda</option>
														<option value="UA">Ukraine</option>
														<option value="AE">United Arab Emirates</option>
														<option selected="selected" value="GB">United
															Kingdom (UK)</option>
														<option value="US">United States (US)</option>
														<option value="UY">Uruguay</option>
														<option value="UZ">Uzbekistan</option>
														<option value="VU">Vanuatu</option>
														<option value="VA">Vatican</option>
														<option value="VE">Venezuela</option>
														<option value="VN">Vietnam</option>
														<option value="WF">Wallis and Futuna</option>
														<option value="EH">Western Sahara</option>
														<option value="WS">Western Samoa</option>
														<option value="YE">Yemen</option>
														<option value="ZM">Zambia</option>
														<option value="ZW">Zimbabwe</option>
													</select>
												</p>

												<p id="shipping_first_name_field"
													class="form-row form-row-first validate-required">
													<label class="" for="shipping_first_name">First
														Name <abbr title="required" class="required">*</abbr>
													</label> <input type="text" placeholder="" id="shipping_first_name"
														name="fname" class="input-text ">
												</p>

												<p id="shipping_last_name_field"
													class="form-row form-row-last validate-required">
													<label class="" for="shipping_last_name">Last Name
														<abbr title="required" class="required">*</abbr>
													</label> <input type="text" placeholder="" id="shipping_last_name"
														name="lname" class="input-text ">
												</p>
												<div class="clear"></div>

												<p id="shipping_company_field"
													class="form-row form-row-wide">
													<label class="" for="shipping_company">Company Name</label>
													<input type="text" placeholder="" id="shipping_company"
														name="scompany" class="input-text ">
												</p>

												<p id="shipping_address_1_field"
													class="form-row form-row-wide address-field validate-required">
													<label class="" for="shipping_address_1">Address <abbr
														title="required" class="required">*</abbr>
													</label> <input type="text" placeholder="Street address"
														id="shipping_address_1" name="sstreet" class="input-text "
														value="${address.getStreet() }">
												</p>

												<p id="shipping_address_2_field"
													class="form-row form-row-wide address-field">
													<input type="text"
														placeholder="Apartment, suite, unit etc. (optional)"
														id="saddress2" name="shipping_address_2"
														class="input-text " value="${address.getAddress2() }">
												</p>

												<p id="shipping_city_field"
													class="form-row form-row-wide address-field validate-required"
													data-o_class="form-row form-row-wide address-field validate-required">
													<label class="" for="shipping_city">Town / City <abbr
														title="required" class="required">*</abbr>
													</label> <input type="text" placeholder="Town / City"
														id="shipping_city" name="scity" class="input-text "
														value="${address.getCity() }">
												</p>

												<p id="shipping_state_field"
													class="form-row form-row-first address-field validate-state"
													data-o_class="form-row form-row-first address-field validate-state">
													<label class="" for="shipping_state">State</label> <input
														type="text" id="shipping_state" name="sstate"
														placeholder="State / County" class="input-text "
														value="${address.getState() }">
												</p>
												<p id="shipping_postcode_field"
													class="form-row form-row-last address-field validate-required validate-postcode"
													data-o_class="form-row form-row-last address-field validate-required validate-postcode">
													<label class="" for="shipping_postcode">Postcode <abbr
														title="required" class="required">*</abbr>
													</label> <input type="text" placeholder="Postcode / Zip"
														id="shipping_postcode" name="spostcode"
														class="input-text " value="${address.getPincode() }">
												</p>
												<p id="billing_email_field"
													class="form-row form-row-first validate-required validate-email">
													<label class="" for="billing_email">Email Address <abbr
														title="required" class="required">*</abbr>
													</label> <input type="text" placeholder="" id="billing_email"
														name="email" class="input-text ">
												</p>

												<p id="billing_phone_field"
													class="form-row form-row-last validate-required validate-phone">
													<label class="" for="billing_phone">Phone <abbr
														title="required" class="required">*</abbr>
													</label> <input type="text" placeholder="" id="billing_phone"
														name="phone" class="input-text ">
												</p>
												<p id="billing_phone_field"
													class="form-row form-row-last validate-required validate-phone">
													<label class="" for="billing_phone">Make it as your
														default address </label> <input type="text" placeholder=""
														id="billing_phone" name="defaddress" class="input-text ">
												</p>
												<div class="clear"></div>


											</div>





											<p id="order_comments_field" class="form-row notes">
												<label class="" for="order_comments">Order Notes</label>
												<textarea cols="5" rows="2"
													placeholder="Notes about your order, e.g. special notes for delivery."
													id="order_comments" class="input-text "
													name="order_comments"></textarea>
											</p>


										</div>

									</div>

								</div>

								<h3 id="order_review_heading">Your order</h3>

								<div id="order_review" style="position: relative;">
									<table class="shop_table">
										<thead>
											<tr>
												<th class="product-name">Product</th>
												<th class="product-total">Total</th>
											</tr>
										</thead>
										<tbody>
											<tr class="cart_item">
												<td class="product-name">Ship Your Idea <strong
													class="product-quantity">× 1</strong>
												</td>
												<td class="product-total"><span class="amount">£15.00</span>
												</td>
											</tr>
										</tbody>
										<tfoot>

											<tr class="cart-subtotal">
												<th>Cart Subtotal</th>
												<td><span class="amount">£15.00</span></td>
											</tr>

											<tr class="shipping">
												<th>Shipping and Handling</th>
												<td>Free Shipping <input type="hidden"
													class="shipping_method" value="free_shipping"
													id="shipping_method_0" data-index="0"
													name="shipping_method[0]">
												</td>
											</tr>


											<tr class="order-total">
												<th>Order Total</th>
												<td><strong><span class="amount">£15.00</span></strong>
												</td>
											</tr>

										</tfoot>
									</table>


									<div id="payment">
										<ul class="payment_methods methods">
											<li class="payment_method_bacs"><input type="radio"
												data-order_button_text="" checked="checked" value="bacs"
												name="payment_method" class="input-radio"
												id="payment_method_bacs"> <label
												for="payment_method_bacs">Direct Bank Transfer </label>
												<div class="payment_box payment_method_bacs">
													<p>Make your payment directly into our bank account.
														Please use your Order ID as the payment reference. Your
														order won’t be shipped until the funds have cleared in
														our account.</p>
												</div></li>
											<li class="payment_method_cheque"><input type="radio"
												data-order_button_text="" value="cheque"
												name="payment_method" class="input-radio"
												id="payment_method_cheque"> <label
												for="payment_method_cheque">Cheque Payment </label>
												<div style="display: none;"
													class="payment_box payment_method_cheque">
													<p>Please send your cheque to Store Name, Store Street,
														Store Town, Store State / County, Store Postcode.</p>
												</div></li>
											<li class="payment_method_paypal"><input type="radio"
												data-order_button_text="Proceed to PayPal" value="paypal"
												name="payment_method" class="input-radio"
												id="payment_method_paypal"> <label
												for="payment_method_paypal">PayPal <img
													alt="PayPal Acceptance Mark"
													src="https://www.paypalobjects.com/webstatic/mktg/Logo/AM_mc_vs_ms_ae_UK.png"><a
													title="What is PayPal?"
													onclick="javascript:window.open(`https://www.paypal.com/gb/webapps/mpp/paypal-popup`,`WIPaypal`,`toolbar=no, location=no, directories=no, status=no, menubar=no, scrollbars=yes, resizable=yes, width=1060, height=700`); return false;"
													class="about_paypal"
													href="https://www.paypal.com/gb/webapps/mpp/paypal-popup">What
														is PayPal?</a>
											</label>
												<div style="display: none;"
													class="payment_box payment_method_paypal">
													<p>Pay via PayPal; you can pay with your credit card if
														you don’t have a PayPal account.</p>
												</div></li>
										</ul>

										<div class="form-row place-order">

											<input type="submit" data-value="Place order"
												value="Place order" id="place_order"
												name="woocommerce_checkout_place_order" class="button alt">


										</div>

										<div class="clear"></div>

									</div>
								</div>
							</form>

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
						<p>Sign up to our newsletter and get exclusive deals you wont
							find anywhere else straight to your inbox!</p>
						<div class="newsletter-form">
							<input type="email" placeholder="Type your email"> <input
								type="submit" value="Subscribe">
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