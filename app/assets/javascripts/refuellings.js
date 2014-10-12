$(document).ready(function(){
   $('.edit-refill-button').click(function() {
    var url;
    url = $(this).data('url');
    return $.ajax({
      url: url,
      type: "GET",
      success: function(data) {
        return $('#editRefill .modal-body').html(data);
      },
      error: function() {
        return $('#editRefill .modal-body').html("ERROR");
      }
    });
  });   
});