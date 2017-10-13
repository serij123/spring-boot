<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html lang="en">
<head>
    <link href="/resources/bootstrap.min.css" rel="stylesheet">
    <link href="/resources/custom_style.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <div class="starter-template">
        <p class="lead">Congratulations! User ${user.firstName} ${user.lastName} with login ${user.login} has been created!</p>
        <p class="lead">Go to : <a href="/login">Login</a></p>
    </div>
</div>
</body>

</html>