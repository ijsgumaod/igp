App.appearance = App.cable.subscriptions.create "AppearanceChannel",
  connected: ->
    # Called when the subscription is ready for use on the server
    @appear()
    $('#monitor').hover -> console.log "HI!"

  disconnected: ->
    # Called when the subscription has been terminated by the server
    console.log 'disonnected from actioncable server!'

  received: (data) ->
    # Called when there's incoming data on the websocket for this channel
    @update_list()

  appear: ->
    @perform 'appear', status: 'on'

  update_list: ->
    $.get url: "/dashboard/online_users.json", (data) ->
      $('#user-list').empty()
      for row in data
        if row.id?
          console.log "#{row.id}, #{row.name}, #{row.online}"
          $('#user-list').append("<div id=#{row.id} href='#' class='list-group-item'>
                                <div class='container-fluid'>
                                  <i><img src='/images/green-icon.png' width='8'/></i>
                                  #{row.name}
                                </div>
                              </div>")
