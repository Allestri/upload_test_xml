// ------ Google Map ------ //


/* function init(){
	initMap();
};
*/



      var customLabel = {
        restaurant: {
          label: 'R'
        },
        bar: {
          label: 'B'
        }
      };

        function initMap() {
        //Location of Crozon
        var crozon = {lat: 48.243982, lng: -4.432997};
        var map = new google.maps.Map(document.getElementById('map'), {
          center: crozon,
          zoom: 7
        });
        var infoWindow = new google.maps.InfoWindow;
        var markers;

          // Change this depending on the name of your PHP or XML file
          downloadUrl('markers.xml', function(data) {
            var xml = data.responseXML;
            markers = xml.documentElement.getElementsByTagName('marker');
            var gmarkers = Array.prototype.forEach.call(markers, function(markerElem) {
              var id = markerElem.getAttribute('id');
              var name = markerElem.getAttribute('name');
              var address = markerElem.getAttribute('address');
              var type = markerElem.getAttribute('type');
              var point = new google.maps.LatLng(
                  parseFloat(markerElem.getAttribute('lat')),
                  parseFloat(markerElem.getAttribute('lng')));

              var infowincontent = document.createElement('div');
              var strong = document.createElement('strong');
              strong.textContent = name
              infowincontent.appendChild(strong);
              infowincontent.appendChild(document.createElement('br'));

              var text = document.createElement('text');
              text.textContent = address
              infowincontent.appendChild(text);
              var icon = customLabel[type] || {};
              var marker = new google.maps.Marker({
                map: map,
                position: point
              });
              console.log(gmarkers);
              marker.addListener('click', function() {
                infoWindow.setContent(infowincontent);
                infoWindow.open(map, marker);
              });
              
            });
            var markerCluster = new MarkerClusterer(map, gmarkers,
                    {imagePath: 'https://developers.google.com/maps/documentation/javascript/examples/markerclusterer/m'});

          });

        }


      // Get the XML file
      function downloadUrl(url, callback) {
        var request = window.ActiveXObject ?
            new ActiveXObject('Microsoft.XMLHTTP') :
            new XMLHttpRequest;

        request.onreadystatechange = function() {
          if (request.readyState == 4) {
            request.onreadystatechange = doNothing;
            callback(request, request.status);
          }
        };

        request.open('GET', url, true);
        request.send(null);
      }

      function doNothing() {}
