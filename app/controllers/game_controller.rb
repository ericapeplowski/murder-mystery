class GameController < ApplicationController
  def index
  end

  def level
    @level = Level.find(params[:id])
    session[:level_id] = params[:id]
  end

  # get argument from the params --
  # need to be sure to
  # a) filter the params as best we can and
  # b) Catch common errors RuntimeError (this is the default exception raised by the raise method),
  # NoMethodError, NameError, IOError, TypeError and ArgumentError.
  def submit
    @response = {}
    begin
      @response[:results] =  eval(params[:command])
      if @response[:results] == eval(current_level.correct_code)
        @response[:correct] = true
      else
        @response[:correct] = false
      end
    rescue NameError => e
      # format the error message so it's a little more readable
      # TODO: pull it into it's own helper method
      message = e.message.split(/for #<GameController.+/)[0]
      @response[:results] = { message: message }
    end

    render json: @response
  end

  private

  def current_level
    @level = Level.find(session[:level_id])
  end
end
