App.mineplayer = App.cable.subscriptions.create "MineplayerChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
     unless data.playerid.blank?
      $('#player' + data.playerid ).css('bottom', data.deltay + 'px')
      $('#player' + data.playerid ).css('left', data.deltax + 'px')
