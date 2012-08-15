class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable,
  :authentication_keys => [:playerid]



  # Setup accessible (or protected) attributes for your model
  attr_accessible(:first_name, :last_name, :email, :playerid, :password, :password_confirmation, :remember_me)
  # attr_accessible :title, :body

  validates(:playerid, :presence => true)
  validates(:first_name, :presence => true)
  validates(:last_name, :presence => true)
  validates(:email, :presence => true)

  has_many(:discs)

  def self.find_first_by_auth_conditions(warden_conditions)
    conditions = warden_conditions.dup
    if login = conditions.delete(:playerid)
      where(conditions).where(["lower(playerid) = :value OR lower(email) = :value", { :value => login.downcase }]).first
    else
      where(conditions).first
    end
  end

end
