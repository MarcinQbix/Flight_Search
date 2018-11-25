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
<form action="/flightList" method="post">
<div class="flight-engine">
    <div class="container">
        <div class="tabing">
            <div class="inner09" style="display: inline-block;">
                <label><input type="radio"  checked="checked" name="modMainSearchFlightType" id="modMainSearchFlightOneway_radio"> w jedną stronę</label>
                <label><input type="radio" name="modMainSearchFlightType"id="modMainSearchFlightReturn_radio"> w obie strony</label>
            </div>
            <div class="tab-content">
                <div id="1" class="tab1 active">
                    <div class="flight-tab row">
                        <div class="persent-one">
                            <i class="fa fa-map-marker" aria-hidden="true"></i>
                            <input type="text"  class="textboxstyle"  name="flyFrom" id="flyFrom" placeholder="From City or airport">
                        </div>
                        <ul class="list-group" id="resultFlyFrom"></ul>
                        <div class="persent-one">
                            <i class="fa fa-map-marker" aria-hidden="true"></i>
                            <input type="text"  class="textboxstyle"  name="flyTo" id ="flyTo" placeholder="To City or airport">
                        </div>
                        <div class="persent-one less-per" >
                            <i class="fa fa-calendar" aria-hidden="true"></i>
                            <input type="date" name="dateFrom" class="textboxstyle" value="2018-11-24" placeholder="Depart">
                        </div>
                        <div class="persent-one less-per">
                            <i class="fa fa-calendar" aria-hidden="true"></i>
                            <input type="date" name="dateTo" class="textboxstyle" placeholder="Returrn">
                        </div>
                        <div class="persent-one">
                            <i class="fa fa-user" aria-hidden="true"></i>
                            <select class="textboxstyle" name="passangers">
                                <option selected value="1">1 Passenger</option>
                                <option value="2">2 Passengers</option>
                                <option value="3">3 Passengers</option>
                            </select>
                        </div>
                        <div class="persent-one less-btn">
                            <input type="Submit" name="submit" value="Search" class="btn btn-info cst-btn" id="srch">
                        </div>
                    </div>
                    <!-- flight tab -->
                </div>
                <!-- tab 1 -->
                <%--<div id="2" class="tab1">--%>
                    <%--<div class="flight-tab row">--%>
                        <%--<div class="persent-one">--%>
                            <%--<i class="fa fa-map-marker" aria-hidden="true"></i>--%>
                            <%--<input type="text" name="search" class="textboxstyle" id="dep" placeholder="From City or airport">--%>
                        <%--</div>--%>
                        <%--<div class="persent-one">--%>
                            <%--<i class="fa fa-map-marker" aria-hidden="true"></i>--%>
                            <%--<input type="text" name="search" class="textboxstyle" id="arival" placeholder="To City or airport">--%>
                        <%--</div>--%>
                        <%--<ul class="list-group" id="results"></ul>--%>
                        <%--<div class="persent-one less-per">--%>
                            <%--<i class="fa fa-calendar" aria-hidden="true"></i>--%>
                            <%--<input type="text" name="dep" class="textboxstyle" id="from-date1" placeholder="Depart">--%>
                        <%--</div>--%>
                        <%--<div class="persent-one less-per">--%>
                            <%--<i class="fa fa-calendar" aria-hidden="true"></i>--%>
                            <%--<input type="text" name="dep" class="textboxstyle" id="to-date" placeholder="Returrn">--%>
                        <%--</div>--%>
                        <%--<div class="persent-one">--%>
                            <%--<i class="fa fa-user" aria-hidden="true"></i>--%>
                            <%--<div class="textboxstyle" id="passenger">01 Passenger</div>--%>
                        <%--</div>--%>
                        <%--<div class="persent-one less-btn">--%>
                            <%--<input type="Submit" name="submit" value="Search" class="btn btn-info cst-btn" id="srch">--%>
                        <%--</div>--%>
                    <%--</div>--%>
                    <!-- flight tab -->
                </div>
                <!-- tab 1 -->
            </div>
        </div>
        <!-- tab content -->
    </div>
    <!-- tabbing -->
</div>
</form>

</body>
</html>
<script>
    $(document).ready(function(){
        $.ajaxSetup({ cache: false });
        $('#flyFrom').keyup(function(){
            $('#resultFlyFrom').html('');
            var searchField = $('#flyFrom').val();
            var expression = new RegExp(searchField, "i");
            $.getJSON('airports.json', function(data) {
                $.each(data, function(key, value){
                    if (value.name.search(expression) != -1 || value.city.search(expression) != -1)
                    {
                        $('#resultFlyFrom').append('<li class="list-group-item link-class">'+value.name+' | <span class="text-muted">'+value.city+'</span></li>');
                    }
                });
            });
        });

        $('#resultFlyFrom').on('click', 'li', function() {
            var click_text = $(this).text().split('|');
            $('#flyFrom').val($.trim(click_text[3]));
            $("#resultFlyFrom").html('');
        });
    });
</script>