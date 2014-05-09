/* 
file:main-scripts.js 
file-Information: javascript file for homepage
included-files: none
last update: 20-9-12
update-information:formatting
version: alpha 
*/

/* scripts to be run when window is resized */
  
  $(window).resize(function(){

    var margin2 = $(window).width()/2-$('#container').width()/2+248;
    $('#ajax-container').css('margin-left',margin2); });

/* scripts to be run after document is loaded */
  
  $(document).ready(function(){

    var margin2 = $(window).width()/2-$('#container').width()/2+248;
       $('#ajax-container').css('margin-left',margin2);

    $('#login').click( function ( event ) {
      event.preventDefault( );
       $('#ajax-shadow').css('display','block').fadeIn( );
       $('#ajax-container').css('display','block').fadeIn( );
       $('#ajax-container').load('/java/static/login.htm');
       });

    $('#feedbacks').click( function ( event ) {
       $('#container-f').slideToggle( function ( ) {
       	$('html, body').animate({scrollTop: $("#container-f").offset().top}, 1000); 
       } );
       });

    $('#close-button').click(function( ) { 
       $('#ajax-shadow').css('display','none');
       $('#ajax-container').css('display','none');
       });

    $('#ajax-shadow').click(function( ) { 
       $('#ajax-shadow').css('display','none');
       $('#ajax-container').css('display','none');
       });

    $('#tabs li').click( function ( ) {
       $('#tabs li').addClass('unactivetab');
       $(this).removeClass('unactivetab');
       $(this).addClass('activetab');
       $panel = $(this).children('a').attr('href');
       $('#tab-contents section').addClass('unactivepanel');
       $($panel).removeClass('unactivepanel');
       $($panel).addClass('activepanel');
       });

    $('#tabs a').click( function ( event ) { 
       event.preventDefault( );
       });
});