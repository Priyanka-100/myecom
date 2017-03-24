<%@ include file="link.jsp"%>
<html>
<head>
</head>
<body>
	<%@ include file="menubar.jsp"%>
	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span8">
				<table class="table table-condensed">
					<tr class="well">
						<td><b>Item</b></td>
						<td class="MyCenter"><b>Quantity</b></td>
						<td class="MyRight"><b>Price</b></td>
						<td />
					</tr>

					<!-- empty cart message -->
					<tr ng-hide="cart.getTotalCount() > 0">
						<td class="MyCenter" colspan="4">Your cart is empty.</td>
					</tr>
					<tr ng-repeat="item in cart.items | orderBy:'name'">
						<td>{{item.name}}</td>
						<td class="MyCenter">
							<div class="input-append">

								<input class="span3 text-center" type="tel"
									ng-model="item.quantity" ng-change="cart.saveItems()" />
								<button class="btn btn-success" type="button"
									ng-disabled="item.quantity >= 1000"
									ng-click="cart.addItem(item.sku, item.name, item.price, +1)">+</button>
								<button class="btn btn-inverse" type="button"
									ng-disabled="item.quantity <= 1"
									ng-click="cart.addItem(item.sku, item.name, item.price, -1)">-</button>
							</div>
						</td>
						<td class="MyRight">{{item.price * item.quantity | currency}}</td>
						<td class="myCenter" title="remove from cart"><a href=""
							ng-click="cart.addItem(item.sku, item.name, item.price, -10000000)">
								<i class="icon-remove" />
						</a></td>
					</tr>
					<tr class="well">
						<td><b>Total</b></td>
						<td class="MyCenter"><b>{{cart.getTotalCount()}}</b></td>
						<td class="MyRight"><b>{{cart.getTotalPrice() |
								currency}}</b></td>
						<td />
					</tr>
				</table>
			</div>
			<div class="span4">
				<p class=" My-Text">
					<button class="btn btn-block"
						onclick="window.location.href='ring_home.jsp'">
						<i class="icon-chevron-left" /> Back to store
					</button>
					<button class="btn btn-block btn-danger"
						ng-click="cart.clearItems()"
						ng-disabled="cart.getTotalCount() < 1">
						<i class="icon-trash icon-white" /> Clear cart
					</button>
				</p>
				<br />
				<p class=" My-Text">
					<button class="btn btn-block btn-link"
						ng-click="cart.checkout('PayPal')"
						ng-disabled="cart.getTotalCount() < 1">
						<img class='imagem_artigo'
							src="https://www.paypal.com/en_US/i/btn/btn_xpressCheckout.gif"
							alt="checkout PayPal" />
					</button>
				</p>
			</div>
		</div>
	</div>
	<%@ include file="footer.jsp"%>
</body>
</html>