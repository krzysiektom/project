<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
    <script src="<c:url value="/webjars/jquery/3.0.0/jquery.min.js"/>"></script>
    <script src="<c:url value="/webjars/bootstrap/4.3.1/js/bootstrap.min.js"/>"></script>
    <link href="<c:url value="/webjars/bootstrap/4.3.1/css/bootstrap.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/css/main.css"/>" rel="stylesheet">
    <title>userForm</title>
</head>
<body>

<%@include file="../fragments/header.jspf" %>

<form:form method="post">

    <div class="container">
        <header>Login
            <a href="/users/add" class="btn btn-primary float-right btn-sm">Register</a>
        </header>

        <div class="card mt-4">
            <div class="card-body">

                <c:if test="${error != false}">
                    <a element="div" cssClass="error">${errorMsg}</a>
                </c:if>

                <div class="row">
                    <div class="form-group col-md-4">
                        <label for="emailId">Email:</label>
                        <input type="text" name="email" class="form-control" id="emailId"/>
                    </div>
                </div>
                <div class="row">
                    <div class="form-group col-md-4">
                        <label for="passwordId">Password:</label>
                        <input type="password" name="password" class="form-control" id="passwordId"/>
                    </div>
                </div>
                <input type="submit" class="btn btn-success btn-sm" value="Login"/>
            </div>
        </div>
    </div>
</form:form>


</body>
</html>
