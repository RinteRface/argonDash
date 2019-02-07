$(function () {
  // activate the first tab at start and display its content
  $('#sidebar-menu .nav-link:eq(0)').tab('show');
  $('.tab-pane:eq(0)').addClass('show active');
    
  // handles shinyapps.io, RStudio connect and shiny server pro
  var workerId = $('base').attr('href');
  // ensure that this code does not locally
  if (typeof workerId != "undefined") {
    var pathname = window.location.pathname;
    var newpath = pathname + workerId;
    window.history.replaceState( {} , 'newpath', newpath);
  }
});