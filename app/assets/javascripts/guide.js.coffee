$(document).ready ->
  #/////////////////////////////////////////////////////////////////////////////
  # JavaScript for CONTROLLER: guide, global
  #/////////////////////////////////////////////////////////////////////////////

  if $('body').hasClass 'guide'
    #///////////////////////////////////////////////////////////////////////////
    # JavaScript for CONTROLLER: guide, ACTION: home
    #///////////////////////////////////////////////////////////////////////////

    if $('body').hasClass 'home'
      #//////////////////
      # Setup
      #//////////////////

      regUrlBox = $('input.form-control')


      #//////////////////
      # Event watchers
      #//////////////////

      # Select text in URL box when it is clicked
      regUrlBox.click ->
        regUrlBox.select()
        return
  return
