// Using JQuery library
$(document).ready(function(){
// JQuery
$(function () {
              $('#datetimepicker6').datetimepicker({
                format: 'YYYY-MM-DD hh:mm',
              });
              $('#datetimepicker7').datetimepicker({
                  format: 'YYYY-MM-DD hh:mm',
                  useCurrent: false //Important! See issue #1075
              });
              $("#datetimepicker6").on("dp.change", function (e) {
                  $('#datetimepicker7').data("DateTimePicker").minDate(e.date);
              });
              $("#datetimepicker7").on("dp.change", function (e) {
                  $('#datetimepicker6').data("DateTimePicker").maxDate(e.date);
              });
          });

})

// var email = document.getElementById("date");

// email.addEventListener("input", function (event) {
//   if (email.validity.typeMismatch) {
//     email.setCustomValidity("I expect a date, darling!");
//   } else {
//     email.setCustomValidity("");
//   }
// });

