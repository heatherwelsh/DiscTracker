class DiscLevel < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible(:level)

  validates(:level, presence: true)
end
