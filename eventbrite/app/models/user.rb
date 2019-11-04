class User < ApplicationRecord
      
  has_many :attendances, dependent: :destroy

  has_many :events, through: :attendance

  # envoyer un mail de bienvenue à un nouvel utilisateur
  after_create :welcome_send

  def welcome_send
    UserMailer.welcome_email(self).deliver_now
  end

end
