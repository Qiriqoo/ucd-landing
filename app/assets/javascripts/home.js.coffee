$ ->

  resizeback = ->
    h = $(window).height()
    $("#acceuil,#acceuil-back,.home-doted").height h  if h > 500
    mt = ((h - $("#acceuil").height()) / 2) * 1.5
    $(".accueil-bloc").css top: mt + "px"  if mt > 50

  $(window).resize ->
    resizeback()
    return

  $(document).ready ->
    resizeback()
	$("body").scrollspy {target: "#home-button"}

	$(document).on "click", "#link-button", (e)->
		e.preventDefault()
		target = $(this).attr('data-link')
		targetBlockTop = $(document).find("#" + target)
		$("body, html").animate
			scrollTop: targetBlockTop.position().top
		, 900, 'linear'
