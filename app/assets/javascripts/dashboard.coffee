# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).on 'turbolinks:load', ->
  #function update_list
  update_list = ->
    $.get url: 'dashboard/online_users.json', (data) ->
      $('#user-list').empty()
      for row in data
        $('#user-list').append("<div id=#{row.id} href='#' class='list-group-item'>
                              <div class='container-fluid'>
                                <i><img src='/images/green-icon.png' width='8'/></i>
                                #{row.name}
                              </div>
                            </div>")

  $('#monitor').hover -> console.log 'haha!'#update_list


  $('.alert.alert-success').fadeTo(2000, 500).slideUp(500,0, ->
    $(this).remove()
  )

  #$('#users').one 'hover' -> console.log 'nigga!'

  #$('#user-list').hover -> clearInterval(update_list)

  #$('#monitor').one 'mouseenter', -> setInterval(update_list, 2000)
    #clearInterval(update_list)

  #$('#monitor').mouseleave -> setTimeout(update_list, 1000)
    #console.log 'fucker!'
