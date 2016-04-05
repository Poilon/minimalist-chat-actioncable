# thanks https://github.com/jmbejar
# thanks http://www.thegreatcodeadventure.com/deploying-action-cable-to-heroku/
class ChatActionCable
  def initialize(app, options={})
    @app = app
  end

  def call(env)
    if Faye::WebSocket.websocket?(env)
      ActionCable.server.call(env)
    else
      @app.call(env)
    end
  end
end
