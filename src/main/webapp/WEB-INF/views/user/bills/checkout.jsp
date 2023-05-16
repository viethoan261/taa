<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Thanh Toán</title>
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
							only valid for online order. <br><br><a class="defaultBtn" href="#">Click here </a>
						</p>
					</div>
					<div class="well well-small"><a href="#"><img src="assets/img/paypal.jpg"
								alt="payment method paypal"></a></div>

					<a class="shopBtn btn-block" href="#">Upcoming products <br><small>Click to view</small></a>
					<br>
					<br>
					<ul class="nav nav-list promowrapper"> 
						<li>
							<div class="thumbnail">
								<a class="zoomTool" href="product_details.html" title="add to cart"><span
										class="icon-search"></span> QUICK VIEW</a>
								<img src="assets/img/bootstrap-ecommerce-templates.png"
									alt="bootstrap ecommerce templates">
								<div class="caption">
									<h4><a class="defaultBtn" href="product_details.html">VIEW</a> <span
											class="pull-right">$22.00</span></h4>
								</div>
							</div>
						</li>
						<li style="border:0"> &nbsp;</li>
						<li>
							<div class="thumbnail">
								<a class="zoomTool" href="product_details.html" title="add to cart"><span
										class="icon-search"></span> QUICK VIEW</a>
								<img src="assets/img/shopping-cart-template.png" alt="shopping cart template">
								<div class="caption">
									<h4><a class="defaultBtn" href="product_details.html">VIEW</a> <span
											class="pull-right">$22.00</span></h4>
								</div>
							</div>
						</li>
						<li style="border:0"> &nbsp;</li>
						<li>
							<div class="thumbnail">
								<a class="zoomTool" href="product_details.html" title="add to cart"><span
										class="icon-search"></span> QUICK VIEW</a>
								<img src="assets/img/bootstrap-template.png" alt="bootstrap template">
								<div class="caption">
									<h4><a class="defaultBtn" href="product_details.html">VIEW</a> <span
											class="pull-right">$22.00</span></h4>
								</div>
							</div>
						</li>
					</ul>

				</div>
				<div class="span9">
					<ul class="breadcrumb">
						<li><a href="index.html" title="Home">Trang Chủ</a> <span class="divider">/</span></li>
						<li class="active" title="Registration">Thanh Toán</li>
					</ul>
					<hr class="soft" />
					<div class="well">
						<form:form class="form-horizontal" action="CheckOut" method="post" modelAttribute="bills">
							<h3 title="Your Billing Details">Thanh Toán Đơn Hàng</h3>
							<div class="control-group">
								<label class="control-label">Họ Và Tên <sup>*</sup></label>
								<div class="controls">
									<form:input type="text" placeholder="Mời Nhập Họ Và Tên" path="display_name"/>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">Email <sup>*</sup></label>
								<div class="controls">
									<form:input type="text" placeholder="Mời Bạn Nhập Email" path="email"/>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">Liên Hệ <sup>*</sup></label>
								<div class="controls">
									<form:input type="text" placeholder=" Mời Nhập Số Điện Thoại" path="phone"/>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">Địa Chỉ <sup>*</sup></label>
								<div class="controls">
									<form:textarea type="text" placeholder="Nhập Địa Chỉ Cụ Thể" path="address"/>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">Ghi Chú <sup>*</sup></label>
								<div class="controls">
									<form:textarea type="text" placeholder="Mời Bạn Nhập Ghi Chú" path="note"/>
								</div>
							</div>
							<div class="control-group">
								<div class="controls">
									<input type="submit" name="submitAccount" value="Register"
										class="shopBtn exclusive">
								</div>
							</div>
						</form:form>
					</div>


					<div class="well">
						<form class="form-horizontal">
							<h3>Your Account Details</h3>
							<div class="control-group">
								<label class="control-label">Fiels label <sup>*</sup></label>
								<div class="controls">
									<input type="text" placeholder=" Field name">
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">Fiels label <sup>*</sup></label>
								<div class="controls">
									<input type="text" placeholder=" Field name">
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">Fiels label <sup>*</sup></label>
								<div class="controls">
									<input type="text" placeholder=" Field name">
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">Fiels label <sup>*</sup></label>
								<div class="controls">
									<input type="text" placeholder=" Field name">
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">Fiels label <sup>*</sup></label>
								<div class="controls">
									<input type="text" placeholder=" Field name">
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">Fiels label <sup>*</sup></label>
								<div class="controls">
									<input type="text" placeholder=" Field name">
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">Fiels label <sup>*</sup></label>
								<div class="controls">
									<input type="text" placeholder=" Field name">
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">Fiels label <sup>*</sup></label>
								<div class="controls">
									<input type="text" placeholder=" Field name">
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">Fiels label <sup>*</sup></label>
								<div class="controls">
									<input type="text" placeholder=" Field name">
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">Fiels label <sup>*</sup></label>
								<div class="controls">
									<input type="text" placeholder=" Field name">
								</div>
							</div>
							<div class="control-group">
								<div class="controls">
									<input type="submit" name="submitAccount" value="Register"
										class="exclusive shopBtn">
								</div>
							</div>
						</form>
					</div>


				</div>
			</div>
</body>
</html>