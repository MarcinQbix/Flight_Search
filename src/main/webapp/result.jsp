<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Your Search Results</title>
    <link href="${pageContext.request.contextPath}/webjars/bootstrap/4.0.0-2/css/bootstrap.css" type="text/css"
          rel="stylesheet">
    <style>
        #table-wrapper {
            position: relative;
        }

        #table-scroll {
            height: 400px;
            overflow: auto;
            margin-top: 20px;
        }

        #table-wrapper table {
            width: 100%;

        }

        #table-wrapper table thead th .text {
            position: absolute;
            top: -20px;
            z-index: 2;
            height: 20px;
            width: 35%;
        }
    </style>
</head>
<body background="images/listbackground.jpg">
<div class="container mt-4">
    <form action="/flightList" method="post">
        <div id="table-wrapper">
            <div id="table-scroll">
                <table class="table table-dark" style="background-color:rgba(0, 0, 0, 0.6);">
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
                            <td scope="row">${loop.index + 1}</td>
                            <td>${flight.cityFrom}</td>
                            <td>${flight.cityTo}</td>
                            <td>${flight.DTimeUTC.dayOfMonth} ${flight.DTimeUTC.month}</td>
                            <td>${flight.DTimeUTC.hour}:${flight.DTimeUTC.minute}</td>
                            <td>${flight.ATimeUTC.hour}:${flight.ATimeUTC.minute}</td>
                            <td>${flight.airlines}</td>
                            <td>${flight.flyDuration}</td>
                            <td>${flight.price} EUR</td>
                            <td><a href="${flight.deepLink}" type="button" class="btn btn-info">Go to booking</a></td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
        <a href="/"><input type="button" class="btn btn-primary btn-lg" name="action" value="go back"></a>
    </form>
</div>
</body>
</html>

