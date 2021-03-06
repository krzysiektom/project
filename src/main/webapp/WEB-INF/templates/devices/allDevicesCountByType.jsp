<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
    <script src="<c:url value="/webjars/jquery/3.0.0/jquery.min.js"/>"></script>
    <script src="<c:url value="/webjars/bootstrap/4.3.1/js/bootstrap.min.js"/>"></script>
    <link href="<c:url value="/webjars/bootstrap/4.3.1/css/bootstrap.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/css/main.css"/>" rel="stylesheet">
    <title>allDevicesGroupByType</title>
</head>
<body>
<%@include file="../fragments/header.jspf" %>
<div class="container">
    <header>All devices count by type</header>
    <div class="card mt-4">
        <div class="card-body">

            <table class="table table-hover">
                <tr>
                    <th>Type</th>
                    <th>Amount</th>
                    <th>Ready</th>
                    <th>Under-service</th>
                    <th style="width: 15%">Actions</th>
                </tr>
                <c:forEach items="${devicesCountByTypes}" var="devicesCountByType">
                    <tr>
                        <td>${devicesCountByType.type.name}</td>
                        <td>${devicesCountByType.count}</td>
                        <td>${devicesCountByType.ready}</td>
                        <td>${devicesCountByType.underService}</td>
                        <td><a href="/devices/type/${devicesCountByType.type.id}" class="btn btn-success btn-sm">Details</a>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </div>
</div>
</body>
</html>
