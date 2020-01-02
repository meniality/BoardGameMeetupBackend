class UserBoardgamesController < ApplicationController
  def index
    userBoardgames = UserBoardgame.all
    render json: userBoardgames 
  end

  def create
    UserBoardgame.create(userBoardgame_params)
  end

  def userBoardgame_params
    params.permit(:user_id, :boardgame_id)
  end
end
