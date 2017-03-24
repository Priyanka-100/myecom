<%@ include file="link.jsp"%>
<html>
<head>
<style>
h2 {
	background-color: orange;
}
</style>
</head>

<a style="text-decoration:none" href="${contextPath}/landing_page"><i><b><font
			face="forte" size="10" color="blue">shoptimez</font></b></i></a>

<body>
	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li><a href="${contextPath}/landing_page"><b>HOME</b></a></li>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#"><b>PRODUCTS 1</b><span
							class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="${contextPath}/men_products"><b>Men</b></a></li>
							<li><a href="${contextPath}/women_products"><b>Women</b></a></li>
						</ul></li>
					<li><a href="${contextPath}/prod"><b>PRODUCTS 2</b></a></li>
					<li><a href="${contextPath}/about_us"><b>ABOUT US</b></a></li>
					<li><a href="${contextPath}/contact_us"><b>CONTACT US</b></a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="${contextPath}/register"><span
							class="glyphicon glyphicon-user"></span><b>REGISTER</b></a></li>
					<li><a href="${contextPath}/login"><span
							class="glyphicon glyphicon-log-in"></span><b>SIGN IN</b></a></li>

				</ul>

			</div>
		</div>
	</nav>
</body>
</html>