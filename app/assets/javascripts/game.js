/// TODO: pull this into a front end framework or something.
// this is a tad bit ridiculous

$(document).ready(function() {

  $('.terminal textarea').keydown(function(e) {
    if (e.keyCode == 13) {
      var command = $(this).val()
      $.post('/submit', {'command': command}, function(e) {
        debugger;
      });
    }
  })
})
