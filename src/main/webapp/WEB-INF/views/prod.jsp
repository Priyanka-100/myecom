<%@ include file="link.jsp"%>
<html lang="en">
<head>
<script src="${contextPath}resources/js/angular.min.js"></script>
<script src="${contextPath}resources/js/cart.js"></script>
</head>
<body ng-app="myModule" ng-controller="myController">
<%@ include file="menubar.jsp"%>

<div class="col-md-2"></div>
	<div class="col-md-8">
		<hr style="border-top: 1px dotted #ccc;" />
		<div id="bg-background" class="col-md-7">
			<h4>
				PRODUCTS
				</h4>
					<hr>
					<div id="product">
						<div id="p_list" ng-repeat="product in products ">
							<h5>{{product.p_name}}</h5>
							<p class="text-center">
								<img ng-src="{{product.p_image}}" />
							</p>
							<div>
								<label>Price: ₱{{product.p_price}}</label>
							</div>
							<p class="text-center">
								<button type="button" ng-click="add_cart(product)">
									<span class="glyphicon glyphicon-shopping-cart"></span> Add to
									cart
								</button>
							</p>
						</div>
					</div>
		</div>
		<div class="pull-right col-md-5">
			<div class="panel panel-primary">
				<div class="panel-heading">
					<h5>MY CART</h5>
				</div>
				<div class="panel-body table-responsive">
					<table class="table">
						<thead>
							<tr>
								<th>Product</th>
								<th>Price</th>
								<th></th>
							</tr>
						</thead>
						<tbody>
							<tr ng-repeat="cart in carts" ng-init="setTotals(cart)">
								<td>{{cart.p_name}}</td>
								<td>₱{{cart.p_price}}</td>
								<td><button type="button" ng-click="remove_cart(cart)"
										class="btn btn-danger">
										<span class="glyphicon glyphicon-remove"></span>
									</button></td>
							</tr>
							<tr>
								<td align="right">Total</td>
								<td>₱{{total}}</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
<%@ include file="footer.jsp"%>
</body>
</html>
