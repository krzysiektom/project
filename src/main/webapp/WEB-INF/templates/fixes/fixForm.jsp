<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
    <script src="<c:url value="/webjars/jquery/3.0.0/jquery.min.js"/>"></script>
    <script src="<c:url value="/webjars/bootstrap/4.3.1/js/bootstrap.min.js"/>"></script>
    <link href="<c:url value="/webjars/bootstrap/4.3.1/css/bootstrap.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/css/main.css"/>" rel="stylesheet">
    <title>fixForm</title>
</head>
<body>

<%@include file="../fragments/header.jspf" %>

<form:form method="post" modelAttribute="fix">

    <div class="container">
        <header>Add fix</header>

        <div class="card mt-4">
            <div class="card-body">

                <div class="row">
                    <div class="form-group col-md-4">
                        <label for="doneId">Done:</label>
                        <form:input path="done" class="form-control" id="doneId"/>
                        <form:errors path="done" element="div" cssClass="error"/>
                    </div>
                </div>

                <div class="row">
                    <div class="form-group col-md-4">
                        <label for="usedMaterialsId">Used materials:</label>
                        <form:input path="usedMaterials" class="form-control" id="usedMaterialsId"/>
                        <form:errors path="usedMaterials" element="div" cssClass="error"/>
                    </div>
                </div>
                <div class="form-check">
                    <input type="checkbox" name="isRepaired" class="form-check-input" id="isRepaired">
                    <label class="form-check-label" for="isRepaired">Repaired</label>
                </div>
                <input type="submit" value="Save"/>

            </div>
        </div>
    </div>
</form:form>
</body>
</html>
