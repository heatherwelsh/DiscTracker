class Disc < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible(:disc_id, :playerid, :name, :style, :brand, :plastic, :color, :stability, :weight, :level)

  validates(:name, presence: true)
  validates(:style, presence: true)
  validates(:brand,presence: true)
  validates(:plastic, presence: true)
  validates(:color, presence: true)
  validates(:stability, presence: false)
  validates(:weight, presence: false)
  validates(:level, presence: false)

  belongs_to(:disc_color, :foreign_key => "color")
  belongs_to(:disc_brand, :foreign_key => "brand")
  belongs_to(:disc_style, :foreign_key => "style")
  belongs_to(:disc_name, :foreign_key => "name")
  belongs_to(:disc_level,:foreign_key => "level")
  belongs_to(:disc_plastic, :foreign_key => "plastic")
  belongs_to(:disc_stability, :foreign_key => "stability")
  belongs_to(:disc_weight, :foreign_key => "weight")
  belongs_to(:user, :foreign_key => "id")
end
