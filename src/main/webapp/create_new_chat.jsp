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
<nav class="navbar navbar-toggleable-md navbar-inverse bg-inverse fixed-top">
    <div class="collapse navbar-collapse" id="navbarsExampleDefault">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="/home">Home</a>
            </li>
        </ul>
        <form class="form-inline my-2 my-lg-0">
            <a href="/login?logout" class="btn btn-outline-success my-2 my-sm-0">Logout</a>
        </form>
    </div>
</nav>
<div class="container">
    <div class="starter-template">
        <p class="lead">Creation new chat</p>

        <form:form action="/create_new_chat" modelAttribute="chat" method="post">
        </form:form>

        <form:form
                action="/create_new_chat"
                modelAttribute="chat"
                method="post"
                class="form-inline">
            <div class="form-group">
                <form:input path="name" placeholder="name"/><br/>
            </div>
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
            <button class="btn btn-primary" type="submit">Create new chat</button>
        </form:form>
    </div>
</div>

</body>

</html>