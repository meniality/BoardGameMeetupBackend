class UserMeetupsController < ApplicationController
  def create
    UserMeetup.create(user_id: params[:user_id], meetup_id: params[:meetup_id])
  end

  def index
    usermeetups = UserMeetup.all
    render json: usermeetups, include: "user"
  end

  def show
    usermeetup = UserMeetup.find(params[:user_meetup])
    render json: usermeetup, include: "user"
  end
  
  def destroy
    UserMeetup.find(params[:id]).destroy
  end
end
