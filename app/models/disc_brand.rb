class DiscBrand < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible(:brand)

  validates(:brand, presence: true)

  has_many(:discs)
end
