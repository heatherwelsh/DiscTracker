class DiscType < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible(:disc_type)

  validates(:disc_type, presence: true)

  has_many(:disc)
end
