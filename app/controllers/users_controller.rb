class UsersController < ApplicationController

  def index
    users = User.all 
    render json: users, include: "boardgames"
  end

  def show
    user = User.find(params[:id])
    render json: user, include: "boardgames"
  end

  def create
    User.create(name: params[:name])
    redirect_to "http://localhost:3001/index.html"
  end
end
