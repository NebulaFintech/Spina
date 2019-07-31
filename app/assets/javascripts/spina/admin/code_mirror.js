$(document).ready(function(){
  $('.code-mirror').each(function() {
    CodeMirror.fromTextArea($(this).get(0), {
      lineNumbers: true,
      matchBrackets: true,
      styleActiveLine: true,
      theme: 'ambiance',
      mode: 'text/xml'
    });
  });
});