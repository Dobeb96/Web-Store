class Item < ApplicationRecord
  belongs_to :category

  has_many :images
  has_many :reviews
end
