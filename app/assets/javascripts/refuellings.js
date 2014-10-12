
$(document).ready(function() {
    lineChart();

    $(window).resize(function() {
        window.m.redraw();
    });
});

$(document).on('page:change', function() {
      window.m.redraw();
  });

$(document).on('page:load', function() {
      window.m.redraw();
  });


function lineChart() {
    window.m = Morris.Line({
    element: 'refuellings_chart',
    data: $('#refuellings_chart').data('refuellings'),
    xkey: 'date',
    ykeys: ['average_consumption'],
    labels: ['Consumo médio'],
    xLabels: ["day"],
    redraw: true,
    postUnits: ' km/l'
  });
}

$(document).ready(function(){
   $('.modal-refill-button').click(function() {
    var url;
    url = $(this).data('url');
    title = $(this).data('modaltitle');
    $('#modalRefill .modal-title').text(title);
    return $.ajax({
      url: url,
      type: "GET",
      success: function(data) {
        return $('#modalRefill .modal-body').html(data);
      },
      error: function() {
        return $('#modalRefill .modal-body').html("ERROR");
      }
    });
  });   
});