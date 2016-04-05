#= require_self
#= require_tree .

hostname = (url) ->
  parser = document.createElement('a')
  parser.href = url
  parser.href = parser.href
  parser.protocol = parser.protocol.replace('http', 'ws')
  parser.href

@App = {}
App.cable = ActionCable.createConsumer hostname('/')
