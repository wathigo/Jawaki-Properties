class Category < ApplicationRecord
  has_many :properties
  validates :prop_type, presence: true, uniqueness: true
end
