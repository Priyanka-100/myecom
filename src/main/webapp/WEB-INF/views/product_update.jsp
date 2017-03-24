<%@ include file="link.jsp"%>
<html>
<head>
<title>PRODUCT UPDATE</title>
<script>
    var app = angular.module('MyApp', []);
 
    app.controller("Book", function ($scope) {
        $scope.items = [];
        $scope.addItem = function (item) {
            $scope.items.push(item);
            $scope.item = {};
        },
        $scope.removeItem = function (index) {
            console.log(index);
            $scope.items.splice(index, 1)
        },
        $scope.editItem = function (index) {
            $scope.editing = $scope.items.indexOf(index);
        }
 
    });
</script>


</head>
<body>
	<%@ include file="menubar.jsp"%>

	<div ng-app="MyApp" class="container" ng-controller="Product">
		<table class="table table-striped table-bordered">
			<tr>
				<td>Product Id</td>
				<td><input type="text" class="form-control" ng-model="item.id" /></td>
			</tr>
			<tr>
				<td>Product Name</td>
				<td><input type="text" class="form-control"
					ng-model="item.name" /></td>
			</tr>
			<tr>
				<td>Category</td>
				<td><input type="text" class="form-control"
					ng-model="item.category" /></td>
			</tr>
			<tr>
				<td>Price</td>
				<td><input type="text" class="form-control"
					ng-model="item.price" /></td>
			</tr>
			<tr>
				<td>Description</td>
				<td><input type="text" class="form-control"
					ng-model="item.quantity" /></td>
			</tr>
			<tr>
				<td class="text-right" colspan="2">
					<button ng-click="addItem(item)" class="btn btn-primary">
						Add</button>
				</td>
			</tr>
		</table>
		<table class="table table-striped table-bordered">
			<thead>
				<tr>
					<th>Product Id</th>
					<th>Product Name</th>
					<th>Category</th>
					<th>Price</th>
					<th>Description</th>
					<th>Edit</th>
					<th>Remove</th>
				</tr>
			</thead>
			<tbody>
				<tr ng-repeat="item in items">
					<td><span ng-hide="editMode">{{item.productId}}</span> <input
						type="text" ng-show="editMode" ng-model="item.id" /></td>
					<td><span ng-hide="editMode">{{item.productName}}</span> <input
						type="text" ng-show="editMode" ng-model="item.name" /></td>
					<td><span ng-hide="editMode">{{item.category}}</span> <input
						type="text" ng-show="editMode" ng-model="item.category" /></td>
					<td><span ng-hide="editMode">{{item.price}}</span> <input
						type="text" ng-show="editMode" ng-model="item.price" /></td>
					<td><span ng-hide="editMode">{{item.description}}</span> <input
						type="text" ng-show="editMode" ng-model="item.quantity" /></td>
					<td><i ng-hide="editMode"
						ng-click="editMode = true; editItem(item)"
						class="glyphicon glyphicon-edit"></i> <i
						class="glyphicon glyphicon-saved" ng-show="editMode"
						ng-click="editMode = false"></i></td>
					<td><i ng-click="removeItem($index)"
						class="glyphicon glyphicon-trash"></i></td>
				</tr>
			</tbody>
		</table>
	</div>


	<%@ include file="footer.jsp"%>
</body>
</html>
