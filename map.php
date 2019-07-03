<!DOCTYPE html>
<html>

<head>
	<title>PHP Uploads</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="style.css" />
</head>

<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="index.php">Accueil</a>
            <ul class="navbar-nav mr-auto">
                <li class="nav-item">
                    <a class="nav-link" href="file.php">Upload</a>
                </li>
                <li class="nav-item active">
                	<a class="nav-link" href="map.php">Google Map</a>
                </li>
            </ul>
    </nav>

    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-6">
            	<h1>Google Maps</h1>
			</div>
        </div>
            <div class="row justify-content-center">
                <div class="col-lg-6">
					<div id="map"></div>
            	</div>
            </div>
    </div>
    <!-- JS -->
    <script src="js/gmap.js"></script>
	<!-- Gmaps -->
	<script async defer
    src="https://maps.googleapis.com/maps/api/js?key=API_KEY&callback=initMap">
    </script>
</body>
</html>