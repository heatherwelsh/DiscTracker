class Mytracker < ActiveRecord::Base
   # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable,
  :authentication_keys => [:login]

  # Setup accessible (or protected) attributes for your model
  attr_accessible(:playerid, :first_name, :last_name, :email, :password, :password_confirmation, :remember_me)
  # attr_accessible :title, :body

  validates(:playerid, :presence => true)
  validates(:first_name, :presence => true)
  validates(:last_name, :presence => true)
  validates(:email, :presence => true)
end
