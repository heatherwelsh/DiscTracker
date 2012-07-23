class DiscColor < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible(:color)

  validates(:color, presence: true)

  has_many(:disc)
end

