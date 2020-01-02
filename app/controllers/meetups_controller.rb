class MeetupsController < ApplicationController
  def index
    meetups = Meetup.all
    render json: meetups, include: ["boardgame", "users"]
  end

  def show
    meetup = Meetup.find(params[:id])
    render json: meetup, include: ["boardgame", user_meetups: {include: :user}]
  end

  def create
    Meetup.create(boardgame_id: params[:boardgame_id], date: params[:date], time: params[:time], location: params[:location])
    redirect_to "http://localhost:3001/index.html"
  end

  def update
    meetup = Meetup.find(params[:id])
    meetup.update(meetup_params)
  end

  
  def destroy
    Meetup.find(params[:id]).destroy
  end

  private
  
  def meetup_params
    params.require(:meetup).permit(:location)
  end
  
end