<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">

<!-- Materialize Library -->

<link rel="import" href="materialize.html">
<link rel="stylesheet" href="resources/css/style.css">

<script src="https://code.jquery.com/jquery-3.4.1.js"></script>

<!-- Materialize Library -->
<!-- Compiled and minified CSS -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">

<!-- Compiled and minified JavaScript -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>


<!-- IBM Plex font and Alegreya font -->
<link
	href="https://fonts.googleapis.com/css?family=Alegreya|IBM+Plex+Mono:400,400i|IBM+Plex+Sans+Condensed:400,400i|IBM+Plex+Sans:100,100i,400,400i,700,700i|IBM+Plex+Serif:400,400i&display=swap"
	rel="stylesheet">

<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">



<link rel="stylesheet" href="resources/css/style.css">

<title>Home</title>
</head>

<body>
	<div class="nav">
		<nav class="light-blue">
			<div class="nav-wrapper">
				<a href="index.html" class="brand-logo">Logo</a> <a href="#"
					data-target="mobile-demo" class="sidenav-trigger pulse"><i
					class="material-icons">menu</i></a>
				<ul id="nav-mobile" class="right hide-on-med-and-down">
					<li><a href="sass.html">Child Marriage</a></li>
					<li><a href="badges.html">Maritial Rape</a></li>
					<li><a href="collapsible.html">Dowry</a></li>
					<li><a href="#report-abuse"
						class="waves-effect waves-light  modal-trigger">Report Abuse</a></li>
					<li><a href="login"><i class="material-icons right">person</i>Register</a></li>
				</ul>
			</div>
		</nav>
		<ul id="mobile-demo" class="sidenav">
			<li><a href="#">Child Marriage</a></li>
			<li><a href="#">Maritial Rape</a></li>
			<li><a href="#">Dowry</a></li>
			<li><a href="#report-abuse"
				class="waves-effect waves-light modal-trigger">Report Abuse</a></li>
			<li><a href="admin.html"><i class="material-icons right">person</i>Register</a></li>
		</ul>
	</div>

	<!-- dropdown for login and register -->
	<ul id="register-dropdown" class="dropdown-content">
		<li><a href="#">Login</a></li>

	</ul>

	<!-- Carousel -->
	<div class="carousel carousel-slider center">
		<a class="carousel-item" href="#one!"><img
			class="responsive-img carousel-img"
			src="https://i.imgur.com/Okdr2US.jpg"></a> <a class="carousel-item"
			href="#two!"><img class="responsive-img carousel-img"
			src="https://i.imgur.com/1vtwgln.jpg"></a>
	</div>


</body>

<!-- Register Modal -->
<!-- Modal Structure -->
<div id="report-abuse" class="modal">

	<div class="register-form">
		<form action="form" method="post">
			<div class="modal-content">
				<h4>Report Abuse</h4>


				<div class="row">
					<div class="input-field col s6">
						<select id="select-district" name="districtName">
							<!-- <option value="" disabled selected>Choose your district</option> -->

							<option value="achham">achham</option>
							<option value="arghakhanchi">arghakhanchi</option>
							<option value="baglung">baglung</option>
							<option value="baitadi">baitadi</option>
							<option value="bajhang">bajhang</option>
							<option value="bajura">bajura</option>
							<option value="dailekh">dailekh</option>
							<option value="bhaktapur">bhaktapur</option>
							<option value="dhankuta">dhankuta</option>
							<option value="lalitpur">lalitpur</option>
							<option value="kaski">kaski</option>
							<option value="kathmandu">kathmandu</option>
							<option value="mustang">mustang</option>
							<option value="saptari">saptari</option>
							<option value="khotang">khotang</option>
							<option value="solukhumbu">solukhumbu</option>
							<option value="kailali">kailali</option>
							<option value="parsa">parsa</option>
							<option value="sindhuli">sindhuli</option>
							<option value="makwanpur">makwanpur</option>

						</select> <label>Select District</label>
					</div>
				</div>

				<div class="row">
					<div class="input-field col s6">
						<i class="material-icons prefix">account_circle</i> <input
							type="text" id="address-input" class="validate"
							name="nagarpalika"> <label for="address-input">Municipality,
							Village</label>
					</div>
				</div>

				<div class="row">
					<div class="input-field col s6">
						<select id="select-category" name="category">
							<!-- <option value="" disabled selected>Choose your district</option> -->
							<option value="child_marriage">Child Marriage</option>
							<option value="marital_rape">Marital Rape</option>
							<option value="dowry_system">Dowry System</option>
							<option value="women_violence">Women Violence</option>


						</select> <label>Select Category</label>
					</div>
				</div>

				<div class="row">
					<div class="input-field col s6">
						<i class="material-icons prefix">today</i> <input id="icon_date"
							type="text" class="datepicker" name="date"> <label
							for="icon_date">Date of Incident</label>
					</div>
				</div>

				<!--  <div class="row">
                    <div class="input-field col s6">
                        <p>
                            <label>
                                <input type="checkbox" />
                                <span>Child Marriage</span>
                            </label>
                        </p>
                        <p>
                            <label>
                                <input type="checkbox" />
                                <span>Marital Rape</span>
                            </label>
                        </p>
                        <p>
                            <label>
                                <input type="checkbox" class="checkbox" />
                                <span>Dowry System</span>
                            </label>
                        </p>
                         <p>
                            <label>
                                <input id="indeterminate-checkbox" type="checkbox" />
                                <span>Women Violence</span>
                            </label>
                        </p>
                    </div>
                </div> -->



				<div class="row">
					<div class="input-field col s6">
						<i class="material-icons prefix">account_circle</i> <input
							type="text" id="witness-input" class="validate"
							name="witness"> <label for="witness-input">
							Witness</label>
					</div>
				</div>
					<div class="row">
					<div class="input-field col s6">
						<i class="material-icons prefix">account_circle</i> <input
							type="textarea" id="text-input" class="validate"
							name="description"> <label for="text-input">
							Description</label>
					</div>
				</div>
				

				<!-- image -->
				<div class="row">
					<div class="input-field col s6">
						<i class="material-icons prefix">add_a_photo</i> <input
							id="icon_file" type="file" class="file"> <label
							for="icon_file">Image</label>
					</div>
				</div>

				<!-- phone -->
				<div class="row">
					<div class="input-field col s6">
						<i class="material-icons prefix">phone</i> <input
							id="icon_telephone" type="tel" class="validate" name="phone">
						<label for="icon_telephone">Telephone</label>
					</div>
				</div>

				<div class="modal-footer">
					<button class="normal-btn btn waves-effect waves-light light-blue"
						type="submit" name="action">
						Submit <i class="material-icons right">send</i>
					</button>
				</div>
			</div>
		</form>
	</div>

</div>

<script>
	$(document).ready(function() {
		// for nav
		$('.sidenav').sidenav();

		M.AutoInit();

		// for carousel
		$('.carousel').carousel();

		$('.carousel.carousel-slider').carousel({
			dist : 0,
			duration : 200,
			fullWidth : true,
			indicators : true
		})

		autoplay()
		function autoplay() {
			$('.carousel').carousel('next');
			setTimeout(autoplay, 4500);
		}

		loadDistricts();

	});

	function loadDistricts() {
		var items = []
		$.getJSON("resources/json/districts.json", function(data) {
			$.each(data, function(key, val) {
				items.push(val);

				$('#select-district').append(
						'<option value="' + key + '">' + val + '</option>');
			});

		});

		console.log(items)
	}
</script>

</html>

