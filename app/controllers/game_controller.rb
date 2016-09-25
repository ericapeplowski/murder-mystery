class GameController < ApplicationController
  def index
  end

  def submit
    # get argument from the params --
    @response =  eval(params[:command]).to_s
    render json: @response
  end
end
