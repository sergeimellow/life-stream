class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_one :profile
  after_create :create_user_profile

  # gives users a profile after creation
  def create_user_profile
    Profile.create(user: self)
  end
end
