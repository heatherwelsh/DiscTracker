class Disc < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible(:playerid, :name, :type, :brand, :plastic, :color, :stability, :weight, :level)

  validates(:playerid, presence: true)
  validates(:name, presence: true)
  validates(:type, presence: true)
  validates(:brand,presence: true)
  validates(:plastic, presence: true)
  validates(:color, presence: true)
  validates(:stability, presence: false)
  validates(:weight, presence: false)
  validates(:level, presence: false)

  belongs_to(:disc_color)
  belongs_to(:disc_brand)
  belongs_to(:disc_type)
  belongs_to(:disc_name)
  belongs_to(:disc_level)
  belongs_to(:disc_plastic)
  belongs_to(:disc_stability)
  belongs_to(:weight)
  belongs_to(:user)
end
