$(function(){
  // var poem = [];

  // var Magnet = function Magnet(offset, id) {
  //   this.id = id;
  //   this.top = offset.top;
  //   this.left = offset.left;
  // }

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
          " name='poem[\"magnet-" + id + "\"']" +
          " type='text' value='" + magnetVal + "'/>")
      }
    }
  });

  // $('#save-fridge').on('click', function() {
  //   $.ajax({
  //     url: '/poems',
  //     type: 'POST',
  //     data: {poem: JSON.stringify(poem)}
  //   });
  // });
});

