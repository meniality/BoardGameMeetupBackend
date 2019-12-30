class User < ApplicationRecord
  has_many :user_boardgames
  has_many :boardgames, through: :user_boardgames
end
