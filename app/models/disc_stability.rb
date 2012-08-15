
class DiscStability < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible(:stability)

  validates(:stability, presence: true)

  has_many(:discs)
end
