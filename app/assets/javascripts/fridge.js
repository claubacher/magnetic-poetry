$(function(){
  $('.magnet').draggable();
  $('#fridge').droppable({
    accept: '.magnet',
    drop: function(event, ui) {
      var id = ui.draggable.attr("id");

      var magnetVal = JSON.stringify({
        id: id,
        top: ui.offset.top,
        left: ui.offset.left
      });

      if ($('#fridgemagnet-' + id).length) {
        $('#fridgemagnet-' + id).val(magnetVal);
      } else {
        $('#poem-form').append('<input type="hidden"' +
          ' id="fridgemagnet-' + id + '"' +
          " name='poem[magnet-" + id + "']" +
          " type='text' value='" + magnetVal + "'/>")
      }
    }
  });
});

