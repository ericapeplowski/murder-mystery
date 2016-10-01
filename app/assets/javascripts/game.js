/// TODO: pull this into a front end framework or something.
// this is a tad bit ridiculous

$(document).ready(function() {
  var main  = '.terminal';
  var input = '.terminal input';
  var log   = '.terminal .history'

  // ==========
  // LISTENERS
  // ==========

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
  });

  // ========
  // HELPERS
  // ========

  function submitAnswer(val) {
    $.post('/submit', { 'command': val }, function(e) {
      if (e.results.message) {
        return printToTerminal(">> " + e.resultsamessage, "red");
      }
      if (Array.isArray(e.results)) {

        e.results.forEach(function(result) {
          printToTerminal(JSON.stringify(result), "green");
        });
        if (e.correct) {
          $('#next-level-button').removeClass('hidden-button');
        }
      }
    });
  }

  function clearPrompt() {
    $(input).val("");
  }

  function scrollToBottom() {

    // this might be the hackiest thing I've ever written
    $(log).scrollTop(10000);
  }

  function printToTerminal(val, className) {
    //  check for defualt class
    className = className ? className : "";

    $(log).append("<p class="+ className +">" + val + "</p>");
    scrollToBottom();
  }
});
