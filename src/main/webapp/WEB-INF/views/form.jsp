<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri = "http://www.springframework.org/tags/form" prefix = "spring" %>
    
<!DOCTYPE html>
<html>
<head>


  <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <script src="https://code.jquery.com/jquery-3.4.1.js"></script>

<!-- Materialize Library -->
<!-- Compiled and minified CSS -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">

<!-- Compiled and minified JavaScript -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>


<!-- IBM Plex font and Alegreya font -->
<link
    href="https://fonts.googleapis.com/css?family=Alegreya|IBM+Plex+Mono:400,400i|IBM+Plex+Sans+Condensed:400,400i|IBM+Plex+Sans:100,100i,400,400i,700,700i|IBM+Plex+Serif:400,400i&display=swap"
    rel="stylesheet">

<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">



<link rel="stylesheet" href="resources/css/style.css">

    

    <!-- Materialize Library -->

    <link rel="import" href="materialize.html">
    <link rel="stylesheet" href="resources/css/style.css">

    <title>Home</title>
     <style>
        .title {
            display: block;
            margin: auto;
            padding: 0px 4px;
            padding-bottom: 4px;
            background: #03a9f4 ;
            color: white;
        }

        .panel {
            border: 2px solid #03a9f4 ;
            border-top: 0px;
            box-shadow: gray;
            text-align: center;
        }

        form {
            display: inline-block;
            align: center;
            margin-left: 350px;
        }

        normal-btn {
            width: 8rem;
        }
    </style> 
</head>
<body>
<%--  <spring:form action = "form" method = "post" modelAttribute = "form">  --%>
<%-- district: <input type = "text" name = "districtName"><br>
nagarpalika: <input type = "text" name = "nagarpalika"><br>
category: <input type = "text" name = "category"><br>
description: <input type= "text" name= "description"><br>
date: <input type = "text" name = "date"><br>
witness: <input type = "text" name = "witness"><br>
phone: <input type = "text" name = "phone"><br>
<input type = "submit"></spring:form> --%>


<body>
    <div class="nav">
        <nav class="light-blue">
            <div class="nav-wrapper">
                <a href="index.html" class="brand-logo">Logo</a>
                <!-- <a href="#" data-target="mobile-demo" class="sidenav-trigger"><i class="material-icons">menu</i></a>
                <ul id="nav-mobile" class="right hide-on-med-and-down">
                    <li><a href="sass.html">Child Marriage</a></li>
                    <li><a href="badges.html">Maritial Rape</a></li>
                    <li><a href="collapsible.html">Dowry</a></li>
                    <li><a href="#report-abuse">Report Abuse</a></li>
                    <li><a href="admin.html" class="waves-effect waves-light  modal-trigger"><i
                                class="material-icons right">person</i>Register</a></li>
                </ul> -->
            </div>
        </nav>
        <!-- <ul id="mobile-demo" class="sidenav">
            <li><a href="sass.html">Child Marriage</a></li>
            <li><a href="badges.html">Maritial Rape</a></li>
            <li><a href="collapsible.html">Dowry</a></li>
            <li><a href="report.html">Report Abuse</a></li>
            <li><a href="admin.html" class="waves-effect waves-light modal-trigger"><i
                        class="material-icons right">person</i>Register</a></li>
        </ul> -->
    </div>

    <div class="container">

        <div class="panel">
            <div class="row col s12">
                <div class="title">
                    <h4 class="center-align">Login</h4>
                </div>
            </div>

            <div class="row valign-wrapper">
                <spring:form action = "form" method = "post" modelAttribute = "form">
                    <div class="row">
                        <div class="input-field col s12">
                            <i class="material-icons prefix">near_me</i>
                            <input type="text" id="address-input" class="validate" name="branchName">
                            <label for="address-input">Branch Name</label>
                        </div>
                    </div>

                    <!-- <!-- <div class="row">
                        <div class="input-field col s12">
                            <select id="select-district" class="district-option" name="districtName">
                                <option value="" disabled selected>Choose your district</option>
                            </select>
                            <label>Select District</label>
                        </div>
                    </div>
 --> 
               <!--      <div class="district-section"></div> -->
                    <!-- phone -->
                <!--     <div class="row">
                        <div class="input-field col s12">
                            <i class="material-icons prefix">phone</i>
                            <input id="icon_telephone" type="tel" class="validate" name="phone">
                            <label for="icon_telephone">Telephone</label>
                        </div>
                    </div> -->

                    <!-- password -->
                    <div class="row">
                        <div class="input-field col s12">
                            <i class="material-icons prefix">lock</i>
                            <input id="icon_pw" type="password" class="validate">
                            <label for="icon_pw">Password</label>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col s6">
                            <button class="normal-btn btn waves-effect waves-light light-blue" type="submit" name="action">Submit
                                <i class="material-icons right">send</i>
                            </button>
                        </div>
                    </div>
                </spring:form>
            </div>
        </div>
    </div>


</body>

<!-- Register Modal -->
<!-- Modal Structure -->
<div id="report-abuse" class="modal">

    <div class="report-form">
        <form action="">
            <div class="modal-content">
                <h4>Register</h4>

                <div class="modal-footer">
                    <input type="submit" class="btn" value="submit">
                </div>
            </div>
        </form>
    </div>

</div>


<script>
    $(document).ready(function () {
        M.AutoInit();

    });

    var items = []
        $.getJSON("resources/json/districts.json", function (data) {
            $.each(data, function (key, val) {
                items.push(val);

                $('#select-district').append('<option value="' + key + '">' + val + '</option>');

            });

        });

        console.log(items)
</script>

</html>