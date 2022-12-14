<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
                 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
</head>

<!-- bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.1.js" integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" crossorigin="anonymous"></script>
<!-- CSS -->
<link rel="stylesheet" href="../../../pub/css/header.css">

<body>
	<nav class="navbar navbar-expand-sm bg-custom fixed-top">

		<div class="container-fluid">
			<span class="navbar-brand">WILD CARD</span>
		  <!-- Links -->
		  <ul class="navbar-nav">
			
			
				<li class="nav-item">
					<a class="nav-link" href="/home">HOME</a>
				</li>
				<sec:authorize access="!isAuthenticated()">
				<li class="nav-item">
					<a class="nav-link" href="/login">LOGIN</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="/create_user">SIGN UP</a>
				</li>
			</sec:authorize>
				<sec:authorize access="isAuthenticated()">
				<li class="nav-item">
					<a class="nav-link" href="/search">SEARCH</a>
				  </li>
				<li class="nav-item">
					<a class="nav-link" href="/products">PRODUCTS</a>
				  </li>
			<li class="nav-item">
			  <a class="nav-link" href="user/account">ACCOUNT</a>
			</li>
			<li class="nav-item">
			  <a class="nav-link" href="../contact">CONTACT</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="/user/logout">LOGOUT</a>
			  </li>
		</sec:authorize>
		  </ul>
		</div>
	  </nav>
	  <br>
	  <br>
	  <br>
	  <br>
	

<!-- <div class="container">
	<div class="row mt-1 mb-3 justify-content-center">
		<div class="col-12">
			<a href="/">Home</a> |
			<a href="/user/createuser">Create User</a> |
			
			<sec:authorize access="hasAnyAuthority('ADMIN')">
				<a href="/admin/admintest">Admin Test</a> |
			</sec:authorize>

			<sec:authorize access="isAuthenticated()">
				<a href="/ajax">Ajax Example</a> |
				<a href="/fileupload">File upload</a> |
				<a href="/user/logout">Logout</a> |
				<sec:authentication property="principal.username" />
			</sec:authorize>

			<sec:authorize access="!isAuthenticated()">
				<a href="/user/login">Login</a>
			</sec:authorize>
		</div>
	</div>
</div> -->