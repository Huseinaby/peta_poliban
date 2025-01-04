// Fungsi untuk memuat peta dan marker
function initMap() {
    var map = L.map('map').setView([-3.2956349856617577, 114.5819302950645], 13);

    // Tambahkan layer tile
    L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
        maxZoom: 19,
        attribution: '© OpenStreetMap contributors'
    }).addTo(map);

    // Ambil data dari server
    fetch('data.php')
        .then(response => response.json())
        .then(data => {
            data.coordinates.forEach(coord => {
                L.marker([coord.lat, coord.lng]).addTo(map)
                    .bindPopup(coord.popup);
            });
        })
        .catch(error => console.error('Error fetching data:', error));
}

// Jalankan fungsi saat dokumen selesai dimuat
document.addEventListener('DOMContentLoaded', initMap);
