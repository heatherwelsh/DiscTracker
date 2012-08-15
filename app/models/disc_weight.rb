class DiscWeight < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible(:weight)

  validates(:weight, presence: true)


  has_many(:discs)
end
