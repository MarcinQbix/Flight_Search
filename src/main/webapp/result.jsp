<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Title</title>
    <link href="${pageContext.request.contextPath}/webjars/bootstrap/4.0.0-2/css/bootstrap.css" type="text/css"
          rel="stylesheet">
</head>
<body background="listbackground.jpg">
<div class="container mt-4">
    <form action="/flightList" method="post">
        <table class="table table-hover">
            <thead>
            <tr>
                <th>#</th>
                <th>City From</th>
                <th>City To</th>
                <th>Departure Date</th>
                <th>Departure time</th>
                <th>Arrivial time</th>
                <th>Airlanes</th>
                <th>Fly Duration</th>
                <th>Price</th>
                <th></th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="flight" items="${flights}" varStatus="loop">
                <tr>
                    <th scope="row">${loop.index + 1}</th>
                    <td>${flight.cityFrom}</td>
                    <td>${flight.cityTo}</td>
                    <td>${flight.DTimeUTC}</td>
                    <td>${flight.DTimeUTC}</td>
                    <td>${flight.ATimeUTC}</td>
                    <td>${flight.airlines}</td>
                    <td>${flight.flyDuration}</td>
                    <td>${flight.price} EUR</td>
                    <td><input class="form-check-input" type="radio" name="flightID" value="${flight}" checked></td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
        <a href="/book/add/view"><input type="button" class="btn btn-outline-success" name="action" value="ADD"></a>
        <input type="submit" class="btn btn-outline-danger" name="action" value="DELETE">
    </form>
</div>
</body>
</html>
