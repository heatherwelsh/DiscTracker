class DiscStyle < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible(:style)

  validates(:style, presence: true)

  has_many(:disc)
end
