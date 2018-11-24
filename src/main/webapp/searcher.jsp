<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Title</title>
    <link href="${pageContext.request.contextPath}/webjars/bootstrap/4.0.0-2/css/bootstrap.css" type="text/css"
          rel="stylesheet">
</head>


<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link href="style.css" rel="stylesheet" >
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<body background="3889f45752d19449f909300bb0b7ad02.jpg">
<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<div class="flight-engine">
    <div class="container">
        <div class="tabing">
            <div class="tab-content">
                <div id="1" class="tab1 active">
                    <div class="flight-tab row">
                        <div class="persent-one">
                            <i class="fa fa-map-marker" aria-hidden="true"></i>
                            <input type="text" name="dep" class="textboxstyle" id="dep" placeholder="From City or airport">
                        </div>
                        <div class="persent-one">
                            <i class="fa fa-map-marker" aria-hidden="true"></i>
                            <input type="text" name="dep" class="textboxstyle" id="arival" placeholder="To City or airport">
                        </div>
                        <div class="persent-one less-per">
                            <i class="fa fa-calendar" aria-hidden="true"></i>
                            <input type="date" name="dep" class="textboxstyle" id="from-date1" value="2018-11-24" placeholder="Depart">
                        </div>
                        <div class="persent-one less-per">
                            <i class="fa fa-calendar" aria-hidden="true"></i>
                            <input type="date" name="dep" class="textboxstyle" id="to-date" placeholder="Returrn">
                        </div>
                        <div class="persent-one">
                            <i class="fa fa-user" aria-hidden="true"></i>
                            <div class="textboxstyle" id="passenger">01 Passenger</div>
                        </div>
                        <div class="persent-one less-btn">
                            <input type="Submit" name="submit" value="Search" class="btn btn-info cst-btn" id="srch">
                        </div>
                    </div>
                    <!-- flight tab -->
                </div>
                <!-- tab 1 -->
                <div id="2" class="tab1">
                    <div class="flight-tab row">
                        <div class="persent-one">
                            <i class="fa fa-map-marker" aria-hidden="true"></i>
                            <input type="text" name="dep" class="textboxstyle" id="dep" placeholder="From City or airport">
                        </div>
                        <div class="persent-one">
                            <i class="fa fa-map-marker" aria-hidden="true"></i>
                            <input type="text" name="dep" class="textboxstyle" id="arival" placeholder="To City or airport">
                        </div>
                        <div class="persent-one less-per">
                            <i class="fa fa-calendar" aria-hidden="true"></i>
                            <input type="text" name="dep" class="textboxstyle" id="from-date1" placeholder="Depart">
                        </div>
                        <div class="persent-one less-per">
                            <i class="fa fa-calendar" aria-hidden="true"></i>
                            <input type="text" name="dep" class="textboxstyle" id="to-date" placeholder="Returrn">
                        </div>
                        <div class="persent-one">
                            <i class="fa fa-user" aria-hidden="true"></i>
                            <div class="textboxstyle" id="passenger">01 Passenger</div>
                        </div>
                        <div class="persent-one less-btn">
                            <input type="Submit" name="submit" value="Search" class="btn btn-info cst-btn" id="srch">
                        </div>
                    </div>
                    <!-- flight tab -->
                </div>
                <!-- tab 1 -->
            </div>
        </div>
        <!-- tab content -->
    </div>
    <!-- tabbing -->
</div>
    <%--<form action="/" method="post">--%>
        <%--<span class="input-group-text purple lighten-3" name=""><i class="fa fa-search text-white"--%>
                                                               <%--aria-hidden="true"></i></span>--%>
            <%--<input class="form-control my-0 py-1" type="text" placeholder="Search" aria-label="From?">--%>


        <%--<div class="input-group md-form form-sm form-1 pl-0">--%>
            <%--<div class="input-group-prepend">--%>
    <%--<span class="input-group-text cyan lighten-2" name=""><i class="fa fa-search text-white"--%>
                                                             <%--aria-hidden="true"></i></span>--%>
            <%--</div>--%>
            <%--<input class="form-control my-0 py-1" type="text" placeholder="Search" aria-label="Where Do You Want to go ?">--%>
        <%--</div>--%>
        <%--<div class="form-group">--%>
            <%--<label for="dateFrom">Departure from</label>--%>
            <%--<input type="date" class="form-control" id="dateFrom" name="dateFrom" value="1" aria-label="Choose Departure day">--%>
        <%--</div>--%>
        <%--<div class="form-group">--%>
            <%--<label for="dateTo">Arrivial until</label>--%>
            <%--<input type="date" class="form-control" id="dateTo" name="dateTo" value="2" aria-label="choose Return day">--%>
            <%--<label for="dateTo">Choose Arivial Date </label>--%>
        <%--</div>--%>
        <%--<button class="btn btn-dark" type="submit">Search! </button>--%>
    <%--</form>--%>

</body>
</html>