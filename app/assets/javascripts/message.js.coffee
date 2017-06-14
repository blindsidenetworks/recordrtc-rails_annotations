$(document).ready ->
  #/////////////////////////////////////////////////////////////////////////////
  # JavaScript for CONTROLLER: message, global
  #/////////////////////////////////////////////////////////////////////////////

  if $('body').hasClass 'message'
    #///////////////////////////////////////////////////////////////////////////
    # JavaScript for CONTROLLER: message, ACTION: recordrtc_launch_request
    #///////////////////////////////////////////////////////////////////////////

    if $('body').hasClass 'recordrtc_launch_request'
      #//////////////////
      # Helper functions
      #//////////////////

      refresh = ->
        $.ajax url: '/recordrtc/refresh_uploads'
        return


      #//////////////////
      # Setup
      #//////////////////

      closeCompatibilityAlert = $('#close-alert')
      # Hidden for now
      # refreshBtn = document.querySelector('button#refresh')

      # Customize SweetAlert2 dialog
      window.sweetAlertConfirmConfig =
        title: 'Are you sure?'
        text: 'You will not be able to recover this recording!'
        type: 'warning'
        showCancelButton: true
        confirmButtonColor: '#DD6B55'
        confirmButtonText: 'Delete'
        cancelButtonText: 'Cancel'

      # Customize DataTables table of all recordings on launch page
      table = $('#uploads-table').dataTable(
        'stateSave': true,
        'columnDefs': [
          {
            'targets': 2
            'orderable': false
            'searchable': false
          }
        ]
      )


      #//////////////////
      # Event watchers
      #//////////////////

      # Hidden for now
      # refreshBtn.onclick = refresh

      # Refresh _uploads partial on launch page every 5 seconds
      setInterval ->
        refresh()
        return
      , 5000


      #//////////////////
      # Main logic
      #//////////////////

      # Auto-close browser compatibility alert if browser is well-supported
      if bowser.firefox and bowser.version >= 29 or
         bowser.chrome and bowser.version >= 49 or
         bowser.opera and bowser.version >= 36
        closeCompatibilityAlert.click()



    #///////////////////////////////////////////////////////////////////////////
    # JavaScript for CONTROLLER: message, ACTION: signed_content_item_form
    #///////////////////////////////////////////////////////////////////////////

    if $('body').hasClass 'signed_content_item_form'
      #//////////////////
      # Helper functions
      #//////////////////

      submitForm = ->
        paramsForm.submit()
        return


      #//////////////////
      # Setup
      #//////////////////

      paramsForm = $('form#lti_form')


      #//////////////////
      # Main logic
      #//////////////////

      # Submit signed content item form on route request
      submitForm()
  return
