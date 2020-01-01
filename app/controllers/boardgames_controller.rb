class BoardgamesController < ApplicationController
  def show
    game = Boardgame.find(params[:id])
    render json: game
  end

  def index
    games = Boardgame.all 
    render json: games
  end

  
end
