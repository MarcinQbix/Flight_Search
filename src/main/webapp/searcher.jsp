<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Title</title>
    <link href="${pageContext.request.contextPath}/webjars/bootstrap/4.0.0-2/css/bootstrap.css" type="text/css"
          rel="stylesheet">
</head>
<body background="3889f45752d19449f909300bb0b7ad02.jpg">
<div class="container mt-4">
    <form action="/" method="post">
        <span class="input-group-text purple lighten-3" name=""><i class="fa fa-search text-white"
                                                               aria-hidden="true"></i></span>
            <input class="form-control my-0 py-1" type="text" placeholder="Search" aria-label="From?">


        <div class="input-group md-form form-sm form-1 pl-0">
            <div class="input-group-prepend">
    <span class="input-group-text cyan lighten-2" name=""><i class="fa fa-search text-white"
                                                             aria-hidden="true"></i></span>
            </div>
            <input class="form-control my-0 py-1" type="text" placeholder="Search" aria-label="Where Do You Want to go ?">
        </div>
        <div class="form-group">
            <label for="dateFrom">Departure from</label>
            <input type="date" class="form-control" id="dateFrom" name="dateFrom" value="1" aria-label="Choose Departure day">
        </div>
        <div class="form-group">
            <label for="dateTo">Arrivial until</label>
            <input type="date" class="form-control" id="dateTo" name="dateTo" value="2" aria-label="choose Return day">
            <label for="dateTo">Choose Arivial Date </label>
        </div>
        <button class="btn btn-dark" type="submit">Search! </button>
    </form>
</div>
</body>
</html>