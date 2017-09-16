<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html lang="en">

<body>
Welcome!
<form action="/login" method="post">
    <label for="username">username:</label><input type="text" id="username" name="username"/><br/>
    <label for="password">Password:</label><input id="password" type="password" name="password"/><br/>
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
    <input type="submit" value="Login"/>
</form>

</body>

</html>