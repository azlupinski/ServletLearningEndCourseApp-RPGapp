<%--
  Created by IntelliJ IDEA.
  User: azlup
  Date: 27.02.2019
  Time: 10:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
    <title>Nowa treść</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <link href="${pageContext.request.contextPath}/resources/css/styles.css" type="text/css" rel="stylesheet">
</head>

<body>

<nav class = "navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <a href="#" class="navbar-brand">RPG SITE</a>

        <button class="navbar-toggle" data-toggle="collapse" data-target=".navHeaderCollapse">
            <span class="glyphicon glyphicon-list"></span>
        </button>

        <div class="collapse navbar-collapse navHeaderCollapse">
            <ul class="nav navbar-nav navbar-right">
                <li class="active"><a href="#">Główna</a></li>
                <li><a href="add">Dodaj</a></li>
                <c:choose>
                    <c:when test="${not empty sessionScope.user}">
                        <li><a href="logout"> Wyloguj </a> </li>
                    </c:when>
                    <c:otherwise>
                        <li><a href="login"> Zaloguj </a> </li>
                    </c:otherwise>
                </c:choose>
            </ul>
        </div>

    </div>
</nav>

<div class="container">
    <div class="col-md-8 col-md-offset-2">
        <form class="form-signin" method="post" action="add">
            <h2 class="form-signin-heading">Dodaj nowy pomysł</h2>
            <input name="inputName" type="text" class="form-control" placeholder="Co dodajesz?"
                   required autofocus />
            <input name="inputUrl" type="url" class="form-control" placeholder="URL"
                   required autofocus />
            <textarea name="inputDescription" rows="5" name="inputUsername"
                      class="form-control" placeholder="Opis" required autofocus></textarea>
            <input class="btn btn-lg btn-primary btn-block" type="submit"
                   value="Dodaj!" />
        </form>
    </div>
</div>

<footer class="footer">
    <div class="container">
        <p class="navbar-text">RPG Site</p>
    </div>
</footer>


</body>
</html>
