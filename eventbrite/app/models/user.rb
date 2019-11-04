class User < ApplicationRecord
      
  has_many :events

  has_many :attendances, through: :attendances
end
