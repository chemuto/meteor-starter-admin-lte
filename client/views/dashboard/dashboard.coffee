AutoForm.hooks
	add:
		onError: (operation,error)->
			App.alertError(error)


Template.dashboard.rendered = ->
 $('[data-toggle=\'offcanvas\']').click (e) ->
   e.preventDefault()
   #If window is small enough, enable sidebar push menu
   if $(window).width() <= 992
     $("body").toggleClass('sidebar-open')
   else
     #Else, enable content streching
     $("body").toggleClass('sidebar-collapse')
   return
