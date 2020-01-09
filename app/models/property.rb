class Property < ApplicationRecord
  belongs_to :category, dependent: :destroy
  has_many :likes, dependent: :destroy
end
