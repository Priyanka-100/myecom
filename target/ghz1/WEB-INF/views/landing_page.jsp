<%@ include file="link.jsp"%>
<html>
<head>
<title>LANDING_PAGE</title>
<style>
.carousel-inner>.item>img, .carousel-inner>.item>a>img {
	width: 100%;
	height: 350px;
	margin: auto;
}

td {
	text-align: center;
}

.carousel-control.left, .carousel-control.right {
	background-image: none !important;
	filter: none !important;
}
</style>
<!--  <style>
body {
	background-image: url("resources/images/home_page_img/bg.jpg");
}
</style> -->
</head>
<body>
	<%@ include file="menubar.jsp"%>
	<div class="container-fluid">

		<!--- CAROUSEL ---->
		<div id="myCarousel" class="carousel slide" data-ride="carousel">

			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
			</ol>

			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<img src="resources/images/home_page_img/sneak1.jpg" alt=".."
						class="img-responsive" style="height: 60%">
				</div>
				<div class="item">
					<img src="resources/images/home_page_img/sneak2.jpg" alt=".."
						class="img-responsive" style="height: 60%">
				</div>
				<div class="item">
					<img src="resources/images/home_page_img/sneak4.png" alt=".."
						class="img-responsive" style="height: 60%">
				</div>
			</div>

			<a class="left carousel-control" href="#myCarousel" role="button"
				data-slide="prev"> <span
				class="glyphicon glyphicon-chevron-left"></span> <span
				class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#myCarousel" role="button"
				data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right"></span> <span
				class="sr-only">Next</span></a>
		</div>
		<hr>

		<div class="container-fluid">
			<div class="row">
				<div class="borders col-xs-6">
					<h4>
						<b>ABOUT SHOPTIMEZ</b>
					</h4>
					<p class="text-justify" class="text-center">
						Shoptimez is a fashion marketplace, with a focus on
						personalization. We believe that every person can be fashionable
						everyday. To deliver this promise, we have built a sophisticated
						stylist recommendation functionality.<a
							href="${contextPath}/about_us" style="text-decoration: none">
							read more...</a>
					</p>

				</div>
			</div>

			<hr>

			<!-- GALLERY -->
			<h2 style="color: brown;">
				<p class="text-center">
					<b>GALLERY</b>
				</p>
			</h2>
			<br />

			<div class="row">
				<table style="width: 100%">
					<tr>
						<td colspan=2><font color="green" size="5"><b><a
									href="${contextPath}/men_products">MEN SHOES</a></b></font></td>
						<td colspan=2><font color="green" size="5"><b><a
									href="${contextPath}/women_products">WOMEN SHOES</a></b></font></td>
					</tr>

					<tr>
						<td align="center"><a href="${contextPath}/men_products"><img
								class="img-responsive img-thumbnail"
								src="resources/images/home_page_img/mshoe1.jpg" alt=""
								height="200" width="200"></a> <br /> <br />
							<h4>Puma Sneakers</h4></td>

						<td align="center"><a href="${contextPath}/men_products"><img
								class="img-responsive img-thumbnail"
								src="resources/images/home_page_img/mshoe2.jpg" alt=""
								height="200" width="200"></a>
							<h4>Adidas Sneakers</h4></td>

						<td align="center"><a href="${contextPath}/women_products"><img
								class="img-responsive img-thumbnail"
								src="resources/images/home_page_img/wshoe3.jpg" alt=""
								height="200" width="200"></a>
							<h4>Reebok casual shoes</h4></td>

						<td align="center"><a href="${contextPath}/women_products"><img
								class="img-responsive img-thumbnail"
								src="resources/images/home_page_img/wshoe4.jpg" alt=""
								height="200" width="200"></a>
							<h4>Globalite casual shoes</h4></td>
					</tr>
				</table>
			</div>
		</div>
	</div>
	<%@ include file="footer.jsp"%>
</body>
</html>
