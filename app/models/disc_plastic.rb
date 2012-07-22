class DiscPlastic < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible(:plastic)

  validates(:plastic, presence: true)
end
