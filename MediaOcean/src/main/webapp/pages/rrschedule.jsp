<%--<%@ page language="java" contentType="text/html; charset=ISO-8859-1"%> --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Pro Kabadi Tournament</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/common.css" />
<!-- <script src="http://code.jquery.com/jquery-1.11.0.min.js"></script> -->
</head>
<body>
    <main class="container"> 
      <header class="page-header">
		<h4>Tournament Schedule</h4>
		</header>
		<div>
			<a href="addteam.htm" title="Back to the Home page"><b>Refresh</b></a>
		</div>
		<br/>
	<div id="rrschedule">
		<table class="table table-striped table-bordered table-condensed">
				<thead>
					<tr>
						<th>Day</th>
						<th>1st Match</th>
						<th>2nd Match</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${matches}" varStatus="loop" step="2">
   						<tr>
   						  <td>
    						<fmt:parseNumber var="i" integerOnly="true" 
                       				type="number" value="${(loop.index+2)/2}" />
    						<c:out value="${i}"/>
    					  </td>
   						  <td><c:out value="${matches[loop.index]}"/></td>
   						  <td><c:out value="${matches[loop.index+1]}"/></td>
   						</tr>
					</c:forEach>
				</tbody>
			</table>
	</div>

	</main>
</body>
</html>