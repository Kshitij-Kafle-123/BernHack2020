<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div align="center">
		<h1>Reports</h1>
		
		<table border="1" width = "50%">

			<thead align = "center">
				<tr>
					<td>District</td>
					<td>Nagarpalika</td>
					<td>Category</td>
					<td>Description</td>
					<td>Date</td>
					<td>Witnessed by</td>
				</tr>
			</thead>

			<tbody align = "center">
				<c:forEach var = "report" items = "${formList}">
					<tr>
					<td>${report.districtName}</td>
					<td>${report.nagarpalika}</td>
					<td>${report.category }</td>
					<td>${report.description}</td>
					<td>${report.date}</td>
					<td>${report.witness}</td>
				</tr>
				</c:forEach>
			</tbody>
		</table>
		</div>
</body>
</html>