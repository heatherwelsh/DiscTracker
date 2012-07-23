class DiscType < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible(:type)

  validates(:type, presence: true)

  has_many(:disc)
end
