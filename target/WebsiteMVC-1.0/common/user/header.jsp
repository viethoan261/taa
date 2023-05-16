<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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
						<security:authorize access="isAuthenticated()">
							<a href="<c:url value="/trang-chu"/>"><span ></span>Wellcome <%=SecurityUtils.getPrincipal().getFullName() %></a>
						</security:authorize>
						<a class="active" href="<c:url value="/trang-chu"/>"> <span class="icon-home"></span> Home</a>
						<a href="#"><span class="icon-user"></span> My Account</a>
						<security:authorize access="isAnonymous()">
							<a href="<c:url value="/dang-ky"/>"><span class="icon-edit" title="Free Register"></span>Đăng ký</a>
							<a href="<c:url value="/dang-nhap"/>"><span class="icon-edit" title="Free Register"></span>Đăng Nhập</a>
						</security:authorize>
						<security:authorize access="isAuthenticated()">
							<%-- <a href="<c:url value="/dang-nhap"/>"><span ></span>Wellcome <%=SecurityUtils.getPrincipal().getFullName() %></a> --%>
							<a href="<c:url value="/thoat"/>"><span ></span>Thoát</a>
						</security:authorize>
						<a href="<c:url value="/lien-he"/>"><span class="icon-envelope"></span> Contact us</a>
						<a href="<c:url value="/gio-hang"/>"><span class="icon-shopping-cart"></span> ${TotalQuantyCart} Item(s) - <span
								class="badge badge-warning"><fmt:formatNumber type="number" groupingUsed="true" value="${TotalPriceCart}"/>₫</span></a>
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
								<img src="<c:url value='/template/user/assets/img/logo-bootstrap-shoping-cart.png'/>"alt="bootstrap sexy shop">
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
						<span class="btn btn-mini">[ ${TotalQuantyCart} ] <span class="icon-shopping-cart"></span></span>
						<span class="btn btn-warning btn-mini">đ</span>
						<span class="btn btn-mini">$</span>
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
								<c:forEach var="item" items="${menus}" varStatus="index">
									<c:if test="${index.first}">
										<li class="active">
									</c:if>
									<c:if test="${not index.first}">
										<li class="">
									</c:if>
									<a href="<c:url value="${item.url}"/>">${item.name}</a></li>
								</c:forEach>
							</ul>
							<form action="/WebsiteMVC/tim-kiem" class="navbar-search pull-left" method="POST">
								<input type="text" placeholder="Search" class="search-query span2" name="key">
							</form>
							<ul class="nav pull-right">
								<li class="dropdown">
									<a data-toggle="dropdown" class="dropdown-toggle" href="#">
									<span class="icon-lock"></span> Login <b class="caret"></b>
									</a>
									<div class="dropdown-menu">
										<form class="form-horizontal loginFrm">
											<div class="control-group">
												<input type="email" class="span2" id="inputEmail" placeholder="Email">
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