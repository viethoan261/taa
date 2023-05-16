<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp" %>
<%@page import="com.laptrinhjavaweb.util.SecurityUtils" %>
	<!-- 
	Upper Header Section 
    -->
		<div class="navbar navbar-inverse navbar-fixed-top">
			<div class="topNav">
				<div class="container">
					<div class="alignR">
						<div class="pull-left socialNw">
							<a href="#"><span class="icon-twitter"></span></a>
							<a href="#"><span class="icon-facebook"></span></a>
							<a href="#"><span class="icon-youtube"></span></a>
							<a href="#"><span class="icon-tumblr"></span></a>
						</div>
						<a class="active" href="<c:url value="/home"/>"> <span class="icon-home"></span> Home</a>
						<a href="#"><span class="icon-user"></span> My Account</a>
						<a href="register.html"><span class="icon-edit"></span> Free Register </a>
						<a href="contact.html"><span class="icon-envelope"></span> Contact us</a>
						<a href="cart.html"><span class="icon-shopping-cart"></span> 2 Item(s) - <span
								class="badge badge-warning"> $448.42</span></a>
					</div>
				</div>
			</div>
		</div>

		<!--
Lower Header Section 
-->
		<div class="container">
			<div id="gototop"> </div>
			<header id="header">
				<div class="row">
					<div class="span4">
						<h1>
							<a class="logo" href="index.html"><span>Twitter Bootstrap ecommerce template</span>
								<!-- <img src="assets/img/logo-bootstrap-shoping-cart.png" alt="bootstrap sexy shop"> -->
								<img src="<c:url value='/template/admin/assets/img/logo-bootstrap-shoping-cart.png'/>"alt="bootstrap sexy shop">
							</a>
						</h1>
					</div>
					<div class="span4">
						<div class="offerNoteWrapper">
							<h1 class="dotmark">
								<i class="icon-cut"></i>
								Twitter Bootstrap shopping cart HTML template is available @ $14
							</h1>
						</div>
					</div>
					<div class="span4 alignR">
						<p><br> <strong> Support (24/7) : 0800 1234 678 </strong><br><br></p>
						<span class="btn btn-mini">[ 2 ] <span class="icon-shopping-cart"></span></span>
						<span class="btn btn-warning btn-mini">$</span>
						<span class="btn btn-mini">&pound;</span>
						<span class="btn btn-mini">&euro;</span>
					</div>
				</div>
			</header>

			<!--
Navigation Bar Section 
-->
			<div class="navbar">
				<div class="navbar-inner">
					<div class="container">
						<a data-target=".nav-collapse" data-toggle="collapse" class="btn btn-navbar">
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</a>
						<div class="nav-collapse">
							<ul class="nav">
								<li class="active"><a href="index.html">Home </a></li>
								<li class=""><a href="list-view.html">List View</a></li>
								<li class=""><a href="grid-view.html">Grid View</a></li>
								<li class=""><a href="three-col.html">Three Column</a></li>
								<li class=""><a href="four-col.html">Four Column</a></li>
								<li class=""><a href="general.html">General Content</a></li>
							</ul>
							<form action="#" class="navbar-search pull-left">
								<input type="text" placeholder="Search" class="search-query span2" id = "SearchProduct">
							</form>
							<ul class="nav pull-right">
								<li class="dropdown">
									<a data-toggle="dropdown" class="dropdown-toggle" href="#"><span
											class="icon-lock"></span> Login <b class="caret"></b></a>
									<div class="dropdown-menu">
										<form class="form-horizontal loginFrm">
											<div class="control-group">
												<input type="text" class="span2" id="inputEmail" placeholder="Email">
											</div>
											<div class="control-group">
												<input type="password" class="span2" id="inputPassword"
													placeholder="Password">
											</div>
											<div class="control-group">
												<label class="checkbox">
													<input type="checkbox"> Remember me
												</label>
												<button type="submit" class="shopBtn btn-block">Sign in</button>
											</div>
										</form>
									</div>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<!-- 
Body Section 
-->