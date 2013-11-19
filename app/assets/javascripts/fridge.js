$(function(){
  var poem = [];

  var Magnet = function Magnet(offset) {
    this.top = offset.top;
    this.left = offset.left;
  }

  $('.magnet').draggable();
  $('.fridge').droppable({
    accept: '.magnet',
    drop: function(event, ui) {
      poem.push(new Magnet(ui.offset));
    }
  });
});

