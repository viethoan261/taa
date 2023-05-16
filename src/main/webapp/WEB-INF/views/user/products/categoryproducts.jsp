<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>
		<!DOCTYPE html>
		<html>

		<head>
			<meta charset="UTF-8" />
			<title>Sản - Phẩm</title>
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
			<div class="well well-small">
				<div class="row">
					<span style="margin-left: 25px;">Danh sách sản phẩm</span>
					<select class="pull-right">
						<option>A - Z</option>
						<option>Cao - Thấp</option>
					</select>
				</div>
				<h3 title="Our Products">Danh Sách Sản Phẩm</h3>
				<div class="row-fluid" id="table-sanpham">
					<c:if test="${products.size()>0}">
						<ul class="thumbnails">
							<c:forEach var="item" items="${products}" varStatus="loop">
								<li class="span4">
									<div class="thumbnail">
										<a href="product_details.html" class="overlay"></a>
										<a class="zoomTool" href="<c:url value="/chi-tiet-san-pham/${item.id}"/>" title="add to cart"><span
												class="icon-search"></span> QUICK VIEW</a>
										<a href="product_details.html">
										<img src="<c:url value='/template/user/assets/img/${item.img}'/>" alt="">
										</a>
										<div class="caption cntr">
											<p>${item.name}</p>
											<p><strong><fmt:formatNumber type="number" groupingUsed="true" value="${item.price}"/>₫</strong></p>
											<h4>
												<a class="shopBtn" href="#" title="add to cart">
													Add to cart
												</a>
											</h4>
											<div class="actionList">
												<a class="pull-left" href="#">Add to Wish List </a>
												<a class="pull-left" href="#"> Add to Compare </a>
											</div>
											<br class="clr" />
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
				</div>
			</div>
			<div class="pagination">
				<a href="#">&laquo;</a>
				<c:forEach var="item" begin="1" end="${paginate.totalPage}" varStatus="loop">
					<%-- <c:if test="${(loop.index) == paginate.page}">
						<a href="<c:url value="/loai-san-pham/${idCategory}/${loop.index}"/>" class="active">${loop.index}</a>	
					</c:if>
					<c:if test="${(loop.index) != paginate.page}">
						<a href="<c:url value="/loai-san-pham/${idCategory}/${loop.index}"/>">${loop.index}</a>
					</c:if> --%> 
					<c:choose>
						<c:when test="${item ==1}">
							<a class="paging-item active" href="#" >${item}</a>
						</c:when>
						<c:otherwise>
							<a class="paging-item" href="#" >${item}</a>
						</c:otherwise>
					</c:choose>
				</c:forEach>
				<a href="#">&raquo;</a>
			</div>
			<content tag="script">
			<script >
				 $("body").on("click",".paging-item",function(){		
					var currentPage=$(this).text();
					alert(currentPage);
					$.ajax({
						url:"/WebsiteMVC/api/loai-san-pham/${idCategory}",
						type:"GET",
						data:{
							currentPage : currentPage,
						},
					    /* dataType: 'json', */
						success: function (result){
							var tbody = $("#table-sanpham");
							tbody.empty().append(result);
							/* tbody.append(result) */
							tbody.html += result;
						}
					})
				})
			</script>
			</content>
		</body>
		</html>