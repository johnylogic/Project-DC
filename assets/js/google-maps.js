function initMap() {
    // Latitude and Longitude
    var myLatLng = {lat: 9.841942, lng: 76.644846};

    var map = new google.maps.Map(document.getElementById('google-maps'), {
        zoom: 17,
        center: myLatLng
    });

    var marker = new google.maps.Marker({
        position: myLatLng,
        map: map,
        title: 'Village 203, Thodupuzha' // Title Location
    });
}
