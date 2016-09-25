/// TODO: pull this into a front end framework or something.
// this is a tad bit ridiculous

$(document).ready(function() {
  var main = '.terminal';
  var input = '.terminal input';
  var log = '.terminal .history'
  // LISTENERS

  $(input).keydown(function(e) {
    if (e.keyCode == 13) {
      var command = $(this).val()
      printToTerminal(command);
      submitAnswer(command);
      clearPrompt();
    }
  });

  $(main).click(function(e) {
    $(input).focus();
  })


  // HELPERS
  function submitAnswer(val) {
    $.post('/submit', { 'command': val }, function(e) {
      if (e.message) {
        return printToTerminal(e.message);
      }
      if (Array.isArray(e)) {
        e.forEach(function(result) {
          printToTerminal(JSON.stringify(result));
        })
      }
    });
  }

  function clearPrompt() {
    $(input).val("");
  }

  function printToTerminal(val) {
    $(log).append("<p>" + val + "</p>");
  }
});
