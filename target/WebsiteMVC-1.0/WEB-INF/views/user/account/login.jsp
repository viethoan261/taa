<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Đăng Nhập</title>
</head>

<body>
	<!-- 
Body Section 
-->
	<div class="row">
		<div id="sidebar" class="span3">
			<div class="well well-small">
					<ul class="nav nav-list">
						<c:forEach var="item" items="${categorys}">
							<li><a href='<c:url value="/loai-san-pham/${item.id}"/>'><span class="icon-chevron-right"></span>${item.name}</a></li>	
						</c:forEach>
						<li style="border:0"> &nbsp;</li>
						<li> <a class="totalInCart" href="cart.html"><strong title="Tổng Tiền">Total Amount<span
										class="badge badge-warning pull-right"
										style="line-height:18px;"><fmt:formatNumber type="number" groupingUsed="true" value="${TotalPriceCart}"/>₫</span></strong></a></li>
					</ul>
			</div>

			<div class="well well-small alert alert-warning cntr">
				<h2>50% Discount</h2>
				<p>
					only valid for online order. <br> <br> <a
						class="defaultBtn" href="#">Click here </a>
				</p>
			</div>
			<div class="well well-small">
				<a href="#">
					<!-- <img src="assets/img/paypal.jpg" alt="payment method paypal"> -->
					<img src="<c:url value='/template/user/assets/img/paypal.jpg'/>" alt="payment method paypal">
				</a>
			</div>

			<a class="shopBtn btn-block" href="#">Upcoming products <br>
				<small>Click to view</small></a> <br> <br>
			<ul class="nav nav-list promowrapper">
				<li>
					<div class="thumbnail">
						<a class="zoomTool" href="product_details.html"
							title="add to cart"><span class="icon-search"></span> QUICK
							VIEW</a> <img
							src="<c:url value='/template/user/assets/img/bootstrap-ecommerce-templates.PNG'/>"
							alt="bootstrap ecommerce templates">
						<div class="caption">
							<h4>
								<a class="defaultBtn" href="product_details.html">VIEW</a> <span
									class="pull-right">$22.00</span>
							</h4>
						</div>
					</div>
				</li>
				<li style="border: 0">&nbsp;</li>
				<li>
					<div class="thumbnail">
						<a class="zoomTool" href="product_details.html"
							title="add to cart"><span class="icon-search"></span> QUICK VIEW</a> 
							<img
							src="<c:url value='/template/user/assets/img/shopping-cart-template.PNG'/>"
							alt="shopping cart template">
						<div class="caption">
							<h4>
								<a class="defaultBtn" href="product_details.html">VIEW</a> <span
									class="pull-right">$22.00</span>
							</h4>
						</div>
					</div>
				</li>
				<li style="border: 0">&nbsp;</li>
				<li>
					<div class="thumbnail">
						<a class="zoomTool" href="product_details.html"
							title="add to cart"><span class="icon-search"></span> QUICK
							VIEW</a>
							<img
							src="<c:url value='/template/user/assets/img/bootstrap-template.png'/>"
							alt="bootstrap template">
						<div class="caption">
							<h4>
								<a class="defaultBtn" href="product_details.html">VIEW</a> <span
									class="pull-right">$22.00</span>
							</h4>
						</div>
					</div>
				</li>
			</ul>

		</div>
		<div class="span9">
			<ul class="breadcrumb">
				<li><a href="index.html">Trang Chủ</a> <span class="divider">/</span></li>
				<li class="active">Login</li>
			</ul>
			<h3>Login</h3>
			<hr class="soft" />

			<div class="row">
				<div class="span4">
					<div class="well">
						<h5>CREATE YOUR ACCOUNT</h5>
						<br /> Enter your e-mail address to create an account.<br /> <br />
						<br />
						<form>
							<div class="control-group">
								<label class="control-label" for="inputEmail">E-mail
									address</label>
								<div class="controls">
									<input class="span3" type="text" placeholder="Email">
								</div>
							</div>
							<div class="controls">
								<button type="submit" class="btn block">Create Your
									Account</button>
							</div>
						</form>
					</div>
				</div>
				<div class="span1">&nbsp;</div>
				<div class="span4">
					<div class="well">
						<h5 title="ALREADY REGISTERED ?">Đăng Nhập Hệ Thống</h5>
						<c:if test="${param.incorrectAccount != null}">
							<div class="alert alert-danger">
								<strong>${alert}</strong> <br> Username or password
								incorrect
							</div>
						</c:if>
						<c:if test="${param.accessDenied != null}">
							<div class="alert alert-danger">
								<strong>${alert}</strong><br> You Not Authorize
							</div>
						</c:if>
						<form action="j_spring_security_check" id="Login" method="post" name='loginForm'>
							<div class="control-group">
								<label class="control-label" for="inputEmail">Email</label>
								<div class="controls">
									<input class="span3" type="email" placeholder="Email" id="email" value="${email}"
										name="j_username">
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="inputPassword">Password</label>
								<div class="controls">
									<input type="password" class="span3" placeholder="Password" id ="password" value="${password}"
										name="j_password">
								</div>
							</div>
							<div class="control-group">
								<label class="checkbox"> 
									<td>Remember Me:</td>
                					<td><input type="checkbox" name="remember-me" /></td>
								</label>
								<div class="controls">
									<button type="submit" name="submit" class="defaultBtn">Sign in</button>
									<a href="<c:url value="/forgetpassword"/>">Forget password?</a>
								</div>
								<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
							</div>
						</form>
					</div>
				</div>
			</div>

		</div>
	</div>
</body>

</html>