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

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1 class="text-center text-secondary my-5">Enter login details</h1>
	<div class="container col-3 py-5 px-4">
		<form action="login" method="post">
			<div class="mb-3">
				<label for="exampleInputUsername" class="form-label fw-bold">Username</label>
				<input type="text" class="form-control" id="exampleInputUsername"
					name="username">
				<div class="form-text">Enter customer id if not admin..</div>
			</div>
			<div class="mb-3">
				<label for="exampleInputPassword1" class="form-label fw-bold">Password</label>
				<input type="password" class="form-control" name="password"
					id="exampleInputPassword1">
			</div>
			<div class="form-check">
				<input class="form-check-input" type="radio" name="usertype"
					id="flexRadioDefault1" value="user"> <label class="form-check-label"
					for="flexRadioDefault1" > User </label>
			</div>
			<div class="form-check">
				<input class="form-check-input" type="radio" name="usertype"
					id="flexRadioDefault1" value="admin"> <label class="form-check-label"
					for="flexRadioDefault1" > Admin </label>
			</div>
			<div class="card-footer">
				<div class="d-flex justify-content-center links">
					Don't have an account?<a href="signup">Sign Up</a>
				</div>
				<!-- <div class="d-flex justify-content-center">
					<a href="#">Forgot your password?</a>
				</div> -->
			</div>
			<button type="submit" class="btn btn-primary w-100 my-2">Submit</button>
		</form>
	</div>
</body>
</html>