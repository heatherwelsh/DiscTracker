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
end
