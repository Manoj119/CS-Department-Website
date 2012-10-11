 /* 
file:admin-scripts.js 
file-information: javascript file for admin page
included-files: none
last update: 20-9-12
update-information: creation
version: alpha 
*/
 	$(window).resize(function(){
                             var margin2 = $(window).width()/2-$('#container').width()/2+248;
                             $('#ajax-container').css('margin-left',margin2);
                              });
            $(document).ready(function(){

                             var margin2 = $(window).width()/2-$('#container').width()/2+248;
                             $('#ajax-container').css('margin-left',margin2);

                             $('.settings').click( function ( event ) {
                                  event.preventDefault( );
                                  $('#ajax-shadow').css('display','block').fadeIn( );
                                  $('#ajax-container').css('display','block').fadeIn( );
                                  $('#ajax-container').load('/java/static/settings.htm');
                              });

                             $('#report').click( function ( event ) {
                                  event.preventDefault( );
                                  $('#ajax-shadow').css('display','block').fadeIn( );
                                  $('#ajax-container').css('display','block').fadeIn( );
                                  $('#ajax-container').load('/java/static/feedback.htm');
                              });

                             $('#user-menu').click( function ( ) {
                                  $('#user-options').fadeToggle( );
                              });

                            $('#close-button').click(function( ) { 
                                  $('#ajax-shadow').css('display','none');
                                  $('#ajax-container').css('display','none');});
                            
                            $('#ajax-shadow').click(function( ) { 
                    	        $('#ajax-shadow').css('display','none');
                                  $('#ajax-container').css('display','none'); });
                          
                            $('#small-close-button').click(function( ){
 		                   $('#notice').css('display','none');
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