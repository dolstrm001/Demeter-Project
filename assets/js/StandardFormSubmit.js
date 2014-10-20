$(document).ready(function() {
 var form = $('#form');
 var response = $('#formresponse');
    
  form.on('submit', function(e) {
    e.preventDefault(); 

    $.ajax({
      url: 'sendForm',
      type: 'POST',
      dataType: 'html',
      data: form.serialize(),
      beforeSend: function() {
          $("#form :input").attr("disabled", true);
          //response.html("Bezig met verzenden <span class='glyphicon glyphicon-time'></span>");
          //response.css("display", "block");
      },
      success: function(data) {
          response.addClass("btn-success");
          response.html("Uw bericht is goed aangekomen. <span class='glyphicon glyphicon-ok'></span>");
          response.slideDown();
          $("#form :input").attr("disabled", false);
          form.trigger('reset');
      },
      error: function(e) {
          response.html("Er is iets misgegaan, probeer het later opnieuw. <span class='glyphicon glyphicon-info-sign'></span>");
          response.addClass("btn-warning");
          $("#form :input").attr("disabled", false);
          console.log(e);
      }
    });
  });
});