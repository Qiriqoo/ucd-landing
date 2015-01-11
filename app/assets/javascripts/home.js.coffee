$ ->

  resizeback = ->
    h = $(window).height()
    $("#acceuil,.home-full,.home-doted").height h  if h > 500
    mt = ((h - $("#acceuil").height()) / 2) * 1.5
    $(".accueil-bloc").css top: mt + "px"  if mt > 50

  $(window).resize ->
    resizeback()
    return

  $(document).ready ->
    resizeback()
