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
                    <a class="nav-link" href="/home">Home <span class="sr-only">(current)</span></a>
                </li>
            </ul>
            <form class="form-inline my-2 my-lg-0">
                <a href="/login?logout" class="btn btn-outline-success my-2 my-sm-0">Logout</a>
            </form>
        </div>
    </nav>

    <div class="container">
        <div class="starter-template">
            <p class="lead">This is chat ${chat.name}</p>

            <p class="lead">
                <table id="messages">
                    <c:forEach items="${messages}" var="message">
                        <tr>
                            <td>${message.dt}</td>
                            <td>${message.user}</td>
                            <td>${message.text}</td>
                        </tr>
                    </c:forEach>
                </table>
            </p>
            <form:form
                    action="/post_message?chat_id=${chat.id}"
                    modelAttribute="newMessage"
                    method="post"
                    class="form-inline">
                <div class="form-group">
                    <form:input placeholder="message" path="text"/>
                </div>
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                <button class="btn btn-primary" type="submit">OK</button>
            </form:form>
        </div>
    </div>
</body>

</html>