<%--<%@ page language="java" contentType="text/html; charset=ISO-8859-1 pageEncoding="ISO-8859-1"%> --%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Pro Kabadi Tournament</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/common.css" />
<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/scripts/addteam.js"></script>
</head>
<body>
    <main class="container"> 
      <header class="page-header">
		<h4>Add Kabaddi Teams</h4>
		</header>
	<div id="addteam">
		<form role="form" action="roundrobin.htm" method="post">
			<!-- <table class="table table-striped table-bordered table-condensed">
				<thead>
					<tr>
						<th>Team Name</th>
						<th>Team Captain</th>
					</tr>
				</thead>
				<tbody>
				</tbody>
			</table> -->
			<div class='form-group'>
			
			</div>
			<div class="btn-space-top-btm">
				<button id="add" type="button" class="btn btn-default">Add Team</button>
			</div>	
			<button type="submit" class="btn btn-primary">Create Match Schedule</button>
		</form>
	</div>

	</main>
</body>
</html>