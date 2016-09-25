class GameController < ApplicationController
  def index
  end

  def level
    @level = Level.find(params[:id])
  end

  def submit
    # get argument from the params --
    # need to be sure to
    # a) filter the params as best we can and
    # b)Catch common errors RuntimeError (this is the default exception raised by the raise method),
    # NoMethodError, NameError, IOError, TypeError and ArgumentError.

    begin
      @response =  eval(params[:command])
    rescue NameError => e

      # format the error message so it's a little more readable
      # TODO: pull it into it's own helper method
      message = e.message.split(/for #<GameController.+/)[0]
      @response = { message: message }
    end
    render json: @response
  end
end
