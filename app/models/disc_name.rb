class DiscName < ActiveRecord::Base
  # attr_accessible :title, :body

  attr_accessible(:name)

  validates(:name, presence: true)
end
