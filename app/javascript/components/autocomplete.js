// app/javascript/components/autocomplete.js
function autocomplete() {
  document.addEventListener("DOMContentLoaded", function() {
    // We need to give our search field later a "tool address ID"
    var toolAddress = document.getElementById('user_address');

    if (toolAddress) {
      var autocomplete = new google.maps.places.Autocomplete(toolAddress, { types: [ 'geocode' ] });
      google.maps.event.addDomListener(toolAddress, 'keydown', function(e) {
        if (e.key === "Enter") {
          e.preventDefault(); // Do not submit the form on Enter.
        }
      });
    }
  });
}

export { autocomplete };
