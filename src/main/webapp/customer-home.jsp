<%@page import="Model.WishList"%>
<%@page import="Dao.ProductDao"%>
<%@page import="Model.Product"%>
<%@page import="java.util.List"%>
<%@page import="Model.Customer"%>
<%@page import="Dao.WishListDao"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->

<!DOCTYPE html>
<html lang="zxx">

<head>
<title>Bootie Ecommerce Bootstrap Responsive Web Template | Home
	:: W3layouts</title>
<!-- Meta tag Keywords -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="UTF-8" />
<meta name="keywords"
	content="Bootie Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script>
	addEventListener("load", function() {
		setTimeout(hideURLbar, 0);
	}, false);
	function hideURLbar() {
		window.scrollTo(0, 1);
	}
</script>
<!-- //Meta tag Keywords -->

<!-- Custom-Files -->
<link rel="stylesheet" href="css/bootstrap.css">
<!-- Bootstrap-Core-CSS -->
<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
<!-- Style-CSS -->
<!-- font-awesome-icons -->
<link href="css/font-awesome.css" rel="stylesheet">
<!-- //font-awesome-icons -->
<!-- /Fonts -->
<link
	href="//fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700"
	rel="stylesheet">
<link
	href="//fonts.googleapis.com/css?family=Source+Sans+Pro:200,200i,300,300i,400,400i,600,600i,700,700i,900"
	rel="stylesheet">
<!-- //Fonts -->

</head>

<body>
<%
Customer c = null;
if(session.getAttribute("data")!=null){
	c = (Customer)session.getAttribute("data");
}
else{
	response.sendRedirect("seller-login.jsp");
}
%>
	<!-- mian-content -->
	<div class="main-banner" id="home">
		<!-- header -->
		<header class="header">
			<div class="container-fluid px-lg-5">
				<!-- nav -->
				<nav class="py-4">
					<div id="logo">
						<h1>
							<a href="index.html"><span class="fa fa-bold"
								aria-hidden="true"></span>ootie</a>
						</h1>
					</div>

					<label for="drop" class="toggle">Menu</label> <input
						type="checkbox" id="drop" />
					<ul class="menu mt-2">
						<li class="active"><a href="customer-home.jsp">Home</a></li>
						<li>
							<!-- First Tier Drop Down --> <label for="drop-2" class="toggle">Drop
								Down <span class="fa fa-angle-down" aria-hidden="true"></span>
						</label> <a href="#">Menu<span class="fa fa-angle-down"
								aria-hidden="true"></span></a> <input type="checkbox" id="drop-2" />
							<ul>
							<%List<WishList> List  = WishListDao.getWishListByCusId(c.getId()); %>
								<li><a href="customer-cart.jsp">Go To Cart(<%=List.size()%>)</a></li>
								<li><a href="customer-wishlist.jsp">Wish list (<%=List.size()%>)</a></li>
								<li><a href="">My Orders</a></li>
								<li><a href="">Track My Order</a></li>
							</ul>
						</li>
						<li>
							<!-- First Tier Drop Down --> <label for="drop-2" class="toggle">Drop
								Down <span class="fa fa-angle-down" aria-hidden="true"></span>
						</label> <a href="#"><%=c.getName() %> <span class="fa fa-angle-down"
								aria-hidden="true"></span></a> <input type="checkbox" id="drop-2" />
							<ul>
								<li><a href="customer-profile.jsp">Profile</a></li>
								<li><a href="customer-change-password.jsp">Change Password</a></li>
								<li><a href="customer-logout.jsp">Logout</a></li>
							</ul>
						</li>
					</ul>
				</nav>
				<!-- //nav -->
			</div>
		</header>
		<!-- //header -->
		<!--/banner-->
		<div class="banner-info">
			<p>Trending of the week</p>
			<h3 class="mb-4">Casual Shoes for Men</h3>
			<div class="ban-buttons">
				<a href="shop-single.html" class="btn">Shop Now</a> <a
					href="single.html" class="btn active">Read More</a>
			</div>
		</div>
		<!--// banner-inner -->

	</div>
	<!--//main-content-->
	<!--/ab -->
	<section class="about py-5">
		<div class="container pb-lg-3">
			<h3 class="tittle text-center">New Arrivals</h3>
			<div class="row">
			<%List<Product>list =ProductDao.getAllProduct(); %>
			<%for(Product p:list){ %>
				<div class="col-md-4 product-men">
					<div class="product-shoe-info shoe text-center">
						<div class="men-thumb-item">
							<img src="image/<%=p.getImage() %>" class="img-fluid" alt=""> <span
								class="product-new-top">New</span>
						</div>
						<div class="item-info-product">
							<h4>
								<a href="single-product.jsp?id=<%=p.getPid()%>"><%=p.getPname() %> </a>
							</h4>

							<div class="product_price">
								<div class="grid-price">
									<span class="money"><%=p.getPprice() %></span>
								</div>
							</div>
						</div>
					</div>
				</div>
			<%} %>
			</div>

		</div>
	</section>
	<!-- //ab -->
	<!--/ab -->
		<!--//testimonials-->
	<!--/ab -->
	
	</footer>
	<!-- //footer -->

</body>

</html>