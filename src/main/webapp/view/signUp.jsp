<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" ></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous"></script>

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1 class="text-center text-secondary my-5">Enter details</h1>
	<div class="container col-3 py-5 px-4">
		<form action="SignUp" method="post">
			<!-- <div class="mb-3">
				<label for="exampleInputUsername" class="form-label fw-bold">Username</label>
				<input type="text" class="form-control" id="exampleInputUsername"
					name="username" placeholder="Username">
			</div> -->
			<div class="mb-3">
				<label for="exampleInputUsername" class="form-label fw-bold">Name</label>
				<input type="text" class="form-control" id="exampleInputUsername"
					name="name" placeholder="Name">
			</div>
			<div class="mb-3">
				<label for="exampleFormControlInput1" class="form-label">Email
					address</label> <input type="email" class="form-control"
					id="exampleFormControlInput1" name="email" placeholder="Email">
			</div>
			<div class="mb-3">
				<label for="exampleInputUsername" class="form-label fw-bold">Phone No</label>
				<input type="text" class="form-control" id="exampleInputUsername"
					name="phoneno" placeholder="Phone Number">
			</div>
			<div class="mb-3">
				<label for="exampleInputUsername" class="form-label fw-bold">Date Of Birth</label>
				<input type="text" class="form-control" id="exampleInputUsername"
					name="DOB" placeholder="Date Of Birth">
			</div>
			<div class="mb-3">
				<label for="exampleFormControlTextarea1" class="form-label">Address</label>
				<textarea class="form-control" id="exampleFormControlTextarea1"
					name="address" rows="3"></textarea>
			</div>
			<div class="mb-3">
				<label for="exampleInputPassword1" class="form-label fw-bold">Password</label>
				<input type="password" class="form-control" name="login.pass"
					id="exampleInputPassword1">
			</div>
			<div class="mb-3">
				<label for="exampleInputPassword1" class="form-label fw-bold">ConfirmPassword</label>
				<input type="password" class="form-control" name="cpassword"
					id="exampleInputPassword1">
			</div>
			<button type="submit" class="btn btn-primary w-100 my-2">SignUp</button>
		</form>
	</div>
</body>
</html>