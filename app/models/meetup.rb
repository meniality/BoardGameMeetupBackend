class Meetup < ApplicationRecord
  belongs_to :boardgame
  has_many :user_meetups 
  has_many :users, through: :user_meetups, dependent: :destroy
  

  accepts_nested_attributes_for :user_meetups
end
