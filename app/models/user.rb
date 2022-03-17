class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable, :lockable  #:omniauthable, omniauth_providers:[:twitter]
  mount_uploader :user_image, ImageUploader
  attr_accessor :current_password
end
