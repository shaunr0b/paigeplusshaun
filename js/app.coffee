s = skrollr.init()

$ ->
  $.localScroll()


  $mainNavWrapper = $('#main-nav-wrapper')
  $mainNav = $('#main-nav')

  $mainNavWrapper.waypoint (direction)->

    if direction == 'down'
      $mainNav.addClass 'sticky'
    else
      $mainNav.removeClass 'sticky'
