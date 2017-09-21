<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html lang="en">

<body>
User registration page
<form:form action="/signup" modelAttribute="user" method="post">
    <form:label path="firstName">First Name:</form:label><form:input path="firstName"/><br/>
    <form:label path="lastName">Last Name:</form:label><form:input path="lastName"/><br/>
    <form:label path="email">Email:</form:label><form:input path="email"/><br/>
    <form:label path="login">Login:</form:label><form:input path="login"/><br/>
    <form:label path="password">Password:</form:label><form:password path="password"/><br/>
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
    <input type="submit" value="Sign In"/>
</form:form>

</body>

</html>