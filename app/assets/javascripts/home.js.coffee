$ ->

  $("#home-button").on "shown.bs.collapse", ->
    e.preventDefault()
    panel = $(document).find(".in")
    $("html, body").animate
      scrollTop: panel.offset().top
    , 500, 'linear'

  resizeback = ->
    h = $(window).height()
    w = $(window).width()
    $("#acceuil,#acceuil-back,.home-doted").height h  if h > 500
    $("#acceuil,#acceuil-back,.home-doted").width  if w < 300
    mt = ((h - $("#acceuil").height()) / 2) * 1.5
    $(".accueil-bloc").css top: mt + "px"  if mt > 50

  $(window).resize ->
    resizeback()

  $(document).ready ->
    resizeback()
