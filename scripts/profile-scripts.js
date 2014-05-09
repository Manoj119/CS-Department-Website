 /* File:profile-scripts.js 
File-Information: main javascript file for homepage
Included-Files: none
Last Update: 16-9-12
Update-Information: creation
Version: alpha 
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

                             $('#user-menu').click( function ( ) {
                                  $('#user-options').fadeToggle( );
                              });

                             $('#report').click( function ( event ) {
                                  event.preventDefault( );
                                  $('#ajax-shadow').css('display','block').fadeIn( );
                                  $('#ajax-container').css('display','block').fadeIn( );
                                  $('#ajax-container').load('/java/static/feedback.htm');
                              });

                            $('#close-button').click(function( ) { 
                                  $('#ajax-shadow').hide( ).fadeOut( );
                                  $('#ajax-shadow').hide( ).fadeOut( );});
                            
                            $('#ajax-shadow').click(function( ) { 
                    	        $('#ajax-shadow').css('display','none');
                                  $('#ajax-container').css('display','none'); });
                          
                            $('#small-close-button').click(function( ){
 		                   $('#notice').hide( ).fadeOut( );
		                 });
                                $('#feedbacks').click( function ( event ) {
                                $('#container-f').toggle( function ( ) {
                               $('html, body').animate({scrollTop: $("#container-f").offset().top}, 1000); 
                              } );
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