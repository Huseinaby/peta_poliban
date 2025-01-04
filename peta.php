<!DOCTYPE html>
<html>
<head>
    <title>Map with Coordinates</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://unpkg.com/leaflet@1.9.4/dist/leaflet.css" integrity="sha384-XQoYMqMTK8lop6tER5tUy4TOsKyFfhMb9rDeP7ztMCHQx8AaZ+hB+gF8Q8KwB+Bx" crossorigin=""/>
    <style>
        #map {
            height: 100vh; /* Full-screen height */
        }
    </style>
</head>
<body>
    <div id="map"></div>

    <script src="https://unpkg.com/leaflet@1.9.4/dist/leaflet.js" integrity="sha384-v9b0qeX9UHKKtF7VSz2ndVvOAZjAQEVRZcJ3hQviAO8whwSEa4Rrlt8jbJXGa0sj" crossorigin=""></script>
    <script>
        // Inisialisasi peta
        var map = L.map('map').setView([-3.2956349856617577, 114.5819302950645], 13); // Zoom level 13

        // Tambahkan layer tile
        L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
            maxZoom: 19,
            attribution: '© OpenStreetMap contributors'
        }).addTo(map);

        // Tambahkan marker di koordinat yang diberikan
        var marker = L.marker([-3.2956349856617577, 114.5819302950645]).addTo(map);

        // Tambahkan popup ke marker
        marker.bindPopup("Koordinat: -3.295635, 114.581930").openPopup();
    </script>
</body>
</html>
