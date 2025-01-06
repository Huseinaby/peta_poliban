  // Inisialisasi peta di pusat area kampus
  var map = L.map('map').setView([-3.295977, 114.582472], 18);

  // Tambahkan layer dasar (OpenStreetMap dan Google Satellite)
  var osmLayer = L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
      maxZoom: 19,
      attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
  }).addTo(map);

  var satelliteLayer = L.tileLayer('http://www.google.cn/maps/vt?lyrs=s&x={x}&y={y}&z={z}', {
      maxZoom: 20,
      attribution: 'Google Satellite'
  });

  // Membuat layer groups
  var layerGroups = {
      "Umum": L.layerGroup(),
      "Akademik": L.layerGroup(),
      "Teknik Elektro": L.layerGroup(),
      "Teknik Sipil dan Kebumian": L.layerGroup(),
      "Teknik Mesin": L.layerGroup(),
      "Akuntansi": L.layerGroup(),
      "Administrasi Bisnis": L.layerGroup(),
      "Parkiran": L.layerGroup(),
      "UKM": L.layerGroup()
  };

  // Data gedung untuk pencarian
  var allBuildings = [];

  // Fungsi untuk memuat data gedung dari server
  function fetchBuildingData(department, layer) {
      fetch(`connection_db.php?department=${department}`)
          .then(response => response.json())
          .then(data => {
              data.forEach(building => {
                  if (building.koordinat) {
                      try {
                          const coords = JSON.parse(building.koordinat);
                          const fillColor = jurusanColors[building.nama_jurusan] || jurusanColors['default'];

                          const polygon = L.polygon(coords, {
                              color: 'black',
                              fillColor: fillColor,
                              weight: 2,
                              dashArray: '5, 5'
                          });

                          polygon.bindPopup(
                              `<b>${building.nama_gedung}</b><br>` +
                              `${building.deskripsi || ''}<br>` +
                              (building.foto ? `<img src="${building.foto}" alt="${building.nama_gedung}" class="popup-image">` : '') +
                              `<br><button onclick="showDetails('${building.id}')" class="detail-button">Detail</button>`
                          );


                          polygon.bindTooltip(
                              building.nama_gedung,
                              { permanent: false, sticky: true, direction: 'top' }
                          );

                          layerGroups[building.nama_jurusan]?.addLayer(polygon);

                          // Tambahkan ke data pencarian
                          allBuildings.push({
                              name: building.nama_gedung.toLowerCase(),
                              layer: polygon
                          });
                      } catch (error) {
                          console.error(`Error parsing coordinates for ${building.nama_gedung}:`, error);
                      }
                  }
              });

              layer.addTo(map);
          })
          .catch(error => {
              console.error(`Error fetching data for ${department}:`, error);
              alert(`Failed to load data for ${department}.`);
          });
  }

  Object.keys(layerGroups).forEach(department => {
      fetchBuildingData(department, layerGroups[department]);
  });

  const jurusanColors = {
      'Teknik Sipil dan Kebumian': 'rgb(212,166,121)',
      'Teknik Mesin': 'rgb(4,137,199)',
      'Teknik Elektro': 'rgb(201,0,2)',
      'Akuntansi': 'rgb(220,215,2)',
      'Administrasi Bisnis': 'rgb(3,190,25)',
      'Parkiran': 'rgb(96,96,96)',
      'default': 'rgb(14,0,192)'
  };

  // Polygon untuk area Poliban
  var polibanCoords = [
      [-3.297889, 114.581756],
      [-3.297132, 114.580903],
      [-3.296918, 114.581182],
      [-3.296307, 114.581386],
      [-3.296221, 114.58152],
      [-3.295817, 114.581394],
      [-3.294934, 114.582062],
      [-3.294561, 114.582118],
      [-3.29386, 114.582607],
      [-3.295109, 114.584125]
  ];

  var polibanPolygon = L.polygon(polibanCoords, {
      color: 'black',
      dashArray: '5, 5',
  }).addTo(map);

  var baseMaps = {
      "Layer Standar": osmLayer,
      "Layer Satelit": satelliteLayer
  };

  var overlayMaps = Object.fromEntries(
      Object.keys(layerGroups).map(department => [department, layerGroups[department]])
  );

  L.control.layers(baseMaps, overlayMaps).addTo(map);

  // Fungsi pencarian
  document.getElementById('search-input').addEventListener('input', function (e) {
      const searchText = e.target.value.toLowerCase();

      allBuildings.forEach(building => {
          if (building.name.includes(searchText)) {
              building.layer.addTo(map);
          } else {
              map.removeLayer(building.layer);
          }
      });
  });

  function showDetails(id) {
    fetch(`connection_db.php?id=${id}`)
        .then(response => response.json())
        .then(data => {
            if (data.error || data.message) {
                alert(data.message || data.error);
            } else {
                const detailsContent = document.getElementById('details-content');
                detailsContent.innerHTML = `
                    <h3>${data.nama_gedung}</h3>
                    <p>${data.deskripsi}</p>
                    ${data.foto ? `<img src="${data.foto}" alt="${data.nama_gedung}" style="width:100%;">` : ''}
                    <p>Lantai: ${data.lantai}</p>
                    <p>Ruang Teori: ${data.ruang_teori}</p>
                    <p>Ruang Lab: ${data.ruang_lab}</p>
                    <p>Ruang Rapat: ${data.ruang_rapat}</p>
                    <p>Ruang Sholat: ${data.ruang_sholat}</p>
                    <p>Toilet: ${data.toilet}</p>
                    <p>Jumlah Ruangan: ${data.jumlah_ruangan}</p>
                    <p>Akses Wifi: ${data.akses_wifi}</p>
                    <p>Jam Operasional: ${data.jam_operasional_a} - ${data.jam_operasional_b}</p>
                `;
                document.getElementById('building-details').style.display = 'block';
            }
        })
        .catch(error => console.error('Error:', error));
}
