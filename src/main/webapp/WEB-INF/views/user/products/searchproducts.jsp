<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>
	<!DOCTYPE html>
	<html>

	<head>
		<meta charset="UTF-8">
		<title>Search - Sản Phẩm</title>
		<style>
		        .pagination {
					display: flex;
					justify-content: center;
				}

				.pagination a {
					color: black;
					float: left;
					padding: 8px 16px;
					text-decoration: none;
					transition: background-color .3s;
					border: 1px solid #ddd;
				}

				.pagination a.active {
					background-color: #4CAF50;
					color: white;
					border: 1px solid #4CAF50;
				}

				.pagination a:hover:not(.active) {
					background-color: #ddd;
				}		
		</style>
	</head>

	<body>
		<!-- 
Body Section 
-->
		<!-- 
Three column view
-->
		<h3 title="Three Column Product view">Three Column Product view </h3>
		<c:if test="${products.size()>0}">
			<ul class="thumbnails">
				<c:forEach var="item" items="${products}" varStatus="loop">
					<li class="span4">
						<div class="thumbnail">
							<a href="product_details.html" class="overlay"></a>
							<a class="zoomTool" href="<c:url value="/chi-tiet-san-pham/${item.id}"/>" title="add to cart">
							<span class="icon-search"></span> QUICK VIEW</a>
							<a href="product_details.html">
							<img src="<c:url value='/template/user/assets/img/${item.img}'/>" alt="">
							</a>
							<div class="caption cntr">
								<p>${item.name}</p>
								<p><strong><fmt:formatNumber type="number" groupingUsed="true" value="${item.price}"/>₫</strong></p>
								<h4><a class="shopBtn" href="#" title="add to cart"> Add to cart </a></h4>
							<div class="actionList">
								<a class="pull-left" href="#">Add to Wish List </a>
								<a class="pull-left" href="#"> Add to Compare </a>
							</div>
							<br class="clr">
							</div>
						</div>
					</li>
					<c:if test="${(loop.index+1) %3==0||(loop.index+1) == products.size()}">
						</ul>
						<c:if test="${(loop.index +1) < products.size()}">
						<ul class="thumbnails">
						</c:if>
					</c:if>
				</c:forEach>
		</c:if>
		<div class="pagination">
			<a href="#">&laquo;</a>
			<c:forEach var="item" begin="1" end="${paginate.totalPage}" varStatus="loop">
				<c:if test="${(loop.index) == paginate.page}">
					<a href="<c:url value="/tim-kiem/${loop.index}"/>" class="active">${loop.index}</a>	
				</c:if>
				<c:if test="${(loop.index) != paginate.page}">
					<a href="<c:url value="/tim-kiem/${loop.index}"/>">${loop.index}</a>
				</c:if>	
			</c:forEach>
			<a href="#">&raquo;</a>
		</div>
<!-- 
Clients 
-->
	</body>
	</html>