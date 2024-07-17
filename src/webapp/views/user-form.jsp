<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>User Form</title>
</head>
<body>
<h1>User Form</h1>
<form action="${user.id == null ? '/users' : '/users/update'}" method="post">
    <input type="hidden" name="id" value="${user.id}" />
    <div>
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" value="${user.name}" required />
    </div>
    <div>
        <label for="email">Email:</label>
        <input type="email" id="email" name="email" value="${user.email}" required />
    </div>
    <div>
        <button type="submit">Save</button>
    </div>
</form>
<a href="/users">Back to Users</a>
</body>
</html>