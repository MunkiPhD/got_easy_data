# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery ->
  $('#add_castle_modal').on 'shown', ->
    FocusFormsFirstInput('new_castle')
  .on 'hidden', ->
    $('#house_castle_id').focus()

  $('#add_castle_modal .btn-primary').click (e) ->
    e.preventDefault()
    $('#add_castle_modal').modal('hide')
    $('#new_castle').submit()
    # and update the list of houses
    $.ajax
        url: "/castles"
	dataType: "json"
	success: (data) ->
          alert data
          FillSelect('house_castle_id', data, "None/Unknown")
	  $('#new_castle')[0].reset()
	fail: (e)->
	  alert("it failed")
