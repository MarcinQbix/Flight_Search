<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Title</title>
    <link href="${pageContext.request.contextPath}/webjars/bootstrap/4.0.0-2/css/bootstrap.css" type="text/css"
          rel="stylesheet">
</head>


<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link href="css/style.css" rel="stylesheet" >
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script
        src="https://code.jquery.com/jquery-3.3.1.min.js"
        integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
        crossorigin="anonymous"></script>
<script src="https://www.jqueryscript.net/demo/JSON-Autocomplete-Fuzzy-Search-jQuery-fuzzyComplete/fuse.min.js"></script>
<script src="https://www.jqueryscript.net/demo/JSON-Autocomplete-Fuzzy-Search-jQuery-fuzzyComplete/dist/js/fuzzycomplete.min.js"></script>
<script src="js/airports.js"></script>


<!------ Include the above in your HEAD tag ---------->

<body background="/images/photobackgroud.jpg">
<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" role="navigation">
    <div class="container">
        <a class="navbar-brand" href="#">D&M Flight Search</a>
        <button class="navbar-toggler border-0" type="button" data-toggle="collapse" data-target="#exCollapsingNavbar">
            &#9776;
        </button>
        <div class="collapse navbar-collapse" id="exCollapsingNavbar">
            <ul class="nav navbar-nav">
                <li class="nav-item"><a href="#" class="nav-link">About</a></li>
                <li class="nav-item"><a href="#" class="nav-link">Link</a></li>
                <li class="nav-item"><a href="#" class="nav-link">Service</a></li>
                <li class="nav-item"><a href="#" class="nav-link">More</a></li>
            </ul>

            <a href="/login"> <button type="button"   class="btn btn-light">Login </button></a>
            <a href="/logoff"> <button type="button"   class="btn btn-light">Logout </button></a>
            <a href="/register"> <button type="button"   class="btn btn-light">Register </button></a>

        </div>
    </div>
</nav>
<form action="/flightList" method="post" autocomplete="off">


    <div id="modalPassword" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h3>Forgot password</h3>
                    <button type="button" class="close font-weight-light" data-dismiss="modal" aria-hidden="true">×</button>
                </div>
                <div class="modal-body">
                    <p>Reset your password..</p>
                </div>
                <div class="modal-footer">
                    <button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
                    <button class="btn btn-primary">Save changes</button>
                </div>
            </div>
        </div>
    </div>
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


                    <!-- flight tab -->
                </div>

                </div>

            </div>
        </div>

    </div>


</div>
</form>

</body>
</html>
<script>
var fuseOptions = { keys: ["IATA", "city"] };
var options = { display: "name", key: "IATA", fuseOptions: fuseOptions,resultsLimit:5 };

$(document).ready(function(){
$("#flyFrom").fuzzyComplete(airports, options);
})
$(document).ready(function(){
$("#flyTo").fuzzyComplete(airports, options);
})
</script>