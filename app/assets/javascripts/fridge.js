$(function(){
  var poem = [];

  var Magnet = function Magnet(offset, id) {
    this.id = id;
    this.top = offset.top;
    this.left = offset.left;
  }

  $('.magnet').draggable();
  $('#fridge').droppable({
    accept: '.magnet',
    drop: function(event, ui) {
      poem.push(new Magnet(ui.offset, ui.draggable.attr("id")));
    }
  });

  $('#save-fridge').on('click', function() {
    $.ajax({
      url: '/poems',
      type: 'POST',
      data: {poem: JSON.stringify(poem)}
    });
  });
});

