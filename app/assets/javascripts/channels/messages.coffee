App.messages = App.cable.subscriptions.create 'MessagesChannel',
  received: (data) ->
    messages = $('#messages')
    messages.append(data.message)

# on load for turbolinks
$(document).on 'page:change', ->
  $('#new_message').on
    'ajax:success': ->
      $('#message_body').val('')
