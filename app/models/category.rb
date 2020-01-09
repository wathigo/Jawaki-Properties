class Category < ApplicationRecord
  has_many :properties, dependent: :destroy
  validates :prop_type, presence: true, uniqueness: true
end
