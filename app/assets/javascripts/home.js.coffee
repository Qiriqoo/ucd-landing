$ ->
  $("#home-button").on "shown.bs.collapse", (e) ->
    e.preventDefault()
    panel = $(document).find("#footer")
    $("html, body").animate
      scrollTop: panel.offset().top
    , 500, 'linear'

  resizeback = ->
    h = $(window).height()
    w = $(window).width()
    $("#acceuil,#acceuil-back,.home-doted").height h  if h > 500
    $("#acceuil,#acceuil-back,.home-doted").width  if w < 300


  $(window).resize ->
    resizeback()

  $(document).ready ->
    resizeback()
