<jsp:include page="menu.jsp" />

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<title>List</title>
</head>
<body>
	<table class="table table-sm table-dark">
		<thead>
			<tr>
				<th scope="col">ID</th>
				<th scope="col">USERNAME</th>
				<th scope="col">PASSWORD</th>
				<th scope="col">GENDER</th>
				<th scope="col">EMAIL</th>
				<th scope="col">DEPARTMENT</th>
				<th scope="col">CREATED DATE</th>

				<th scope="col">SALARY</th>
				<th scope="col">ROLE</th>
				<th scope="col">QUESTION</th>
				<th scope="col">ANSWER</th>
				<th scope="col">ACTION</th>

			</tr>
		</thead>
		<tbody>
			<c:forEach items="${employees}" var="emp">
				<tr>
					<td><c:out value="${emp.employeeId}"></c:out></td>
					<td><c:out value="${emp.username}"></c:out></td>
					<td><c:out value="${emp.password}"></c:out></td>
					<td><c:out value="${emp.gender}"></c:out></td>

					<td><c:out value="${emp.email}"></c:out></td>
					<td><c:out value="${emp.department}"></c:out></td>
					<td><c:out value="${emp.createdDate}"></c:out></td>
					<td><c:out value="${emp.salary}"></c:out></td>

					<td><c:out value="${emp.role}"></c:out></td>
					<td><c:out value="${emp.question}"></c:out></td>
					<td><c:out value="${emp.answer}"></c:out></td>
					
					<td><a href="getEmployee?eid=${emp.employeeId}&msg=null"
						class="btn btn-success">EDIT</a> </td>
					<td><a class="btn btn-danger"
						href="deleteEmployeeById?eid=${emp.employeeId}"
						onclick="return confirm('Are you sure?')">DELET</a></td>


				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>