<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>

<head>
	<title>Rechords</title>
	
	<link type="text/css" rel="stylesheet" href="css/style.css">
</head>

<body>
	<div id="wrapper">
		<div id="header">
			<h1>Welcome to Rechords</h1>
			<h4>A place to catalog and manage your record collection</h4>
		</div>
	</div>

	<div id="container">
		<div id="content">
		
			<input type="button" value="Add User"
				   onclick="window.location.href='add-user-form.jsp'; return false;"
				   class="add-user-button"
			/>
		
		<table>
			<tr>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Email</th>
				<th>User Name</th>
				<th>Action</th>
			</tr>
			
			<c:forEach var="tempUser" items="${USER_LIST}">
			
			<tr>
				<td>${tempUser.firstName}</td>
				<td>${tempUser.lastName}</td>
				<td>${tempUser.email}</td>
				<td>${tempUser.userName}</td>
				<td>
					<a href="${tempLink}">Update</a>
					<a href="${deleteLink}"
					onclick="if (!(confirm('Are you sure you want to delete this user?'))) return false">
					Delete</a>
				
				</td>
			
			</tr>
			</c:forEach>
			

		</table>
		
		</div>
	
	
	
	</div>
	
	
</body>


</html>
