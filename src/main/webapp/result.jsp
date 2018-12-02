<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Your Search Results</title>
    <link href="${pageContext.request.contextPath}/webjars/bootstrap/4.0.0-2/css/bootstrap.css" type="text/css"
          rel="stylesheet">
</head>
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
<script
        src="https://code.jquery.com/jquery-3.3.1.js"
        integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
        crossorigin="anonymous"></script>

<script type="text/javascript" src="js/addons/datatables.min.js"></script>
<link href="css/addons/datatables.min.css" rel="stylesheet">
<body background="images/listbackground.jpg">
<div class="container mt-4">
    <form action="/flightList" method="post">
        <table class="table table-dark" id="tablewithsum"style="background-color:rgba(0, 0, 0, 0.6);" >
        <%--<table id="dtVerticalScrollExample" class="table table-striped table-bordered table-sm" cellspacing="0" width="100%">--%>

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
                <th>Get This Flight!</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="flight" items="${flights}" varStatus="loop">
                <tr>
                    <th scope="row">${loop.index + 1}</th>
                    <td>${flight.cityFrom}</td>
                    <td>${flight.cityTo}</td>
                    <td>${flight.DTimeUTC.dayOfMonth} ${flight.DTimeUTC.month}</td>
                    <td>${flight.DTimeUTC.hour}:${flight.DTimeUTC.minute}</td>
                    <td>${flight.ATimeUTC.hour}:${flight.ATimeUTC.minute}</td>
                    <td>${flight.airlines}</td>
                    <td>${flight.flyDuration}</td>
                    <td>${flight.price} EUR</td>
                    <td><a href="${flight.deepLink}" type="button" class="btn btn-info">Go to booking</a> </td>
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
<script>
    $(document).ready(function() {
        $('#tablewithsum').DataTable( {
            "scrollY":        "200px",
            "scrollCollapse": true,
            "paging":         false
        } );
    } );
</script>
