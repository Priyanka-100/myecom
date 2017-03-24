<%@ include file="link.jsp"%>
<html>
<head>
<script src="${contextPath}/resources/css/register_page.css"></script>
<script src="${contextPath}/resources/js/register_page.js"></script>

<title>LOGIN</title>

</head>
<body>
	<%@ include file="menubar.jsp"%>

	<c:if test="${not empty error}">
		<div class="error">${error}</div>
	</c:if>
	<c:if test="${not empty msg}">
		<div class="msg">${msg}</div>
	</c:if>

	<div class="container">
		<div class="row">
			<div class="col-md-6"></div>
			<div class="col-md-6">
				<form action="${contextPath}/login_submit" method="post"
					id="fileForm" role="form">
					<fieldset>
						<div class="form-group">
							<label for="email"><span class="req">* </span> Email
								Address: </label> <input class="form-control" required type="text"
								name="email" id="email" onchange="email_validate(this.value);" />
							<div class="status" id="status"></div>
						</div>

						<div class="form-group">
							<label for="password"><span class="req">* </span>
								Password: </label> <input required name="password" type="password"
								class="form-control inputpass" minlength="4" maxlength="16"
								id="pass1" />
						</div>

						<div class="form-group">
							<input class="btn btn-success" type="submit" name="submit_reg"
								value="Sign up">

						</div>
					</fieldset>
				</form>
				<!-- ends register form -->
			</div>
		</div>
	</div>
	<input type="hidden" name="${_csrf.parameterName}"
		value="${_csrf.token}" />

	<%@ include file="footer.jsp"%>
</body>
</html>