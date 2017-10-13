<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
            <h1>Hello, ${user.firstName} ${user.lastName}. Here available chat rooms:</h1>
            <p class="lead">
                <table id="chats">
                    <c:forEach items="${chats}" var="chat">
                        <tr>
                            <td><a href="/view_chat?chat_id=${chat.id}">${chat.name}</a></td>
                        </tr>
                    </c:forEach>
                </table>
            </p>
            <p class="lead"><a href="/create_new_chat">Create new chat</a></p>

        </div>
    </div>

    <script src="../../dist/js/bootstrap.min.js"></script>
</body>

</html>