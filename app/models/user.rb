class User < ApplicationRecord
  has_many :user_boardgames
  has_many :boardgames, through: :user_boardgames
  has_many :user_meetups
  has_many :meetups, through: :user_meetups, dependent: :destroy
end
