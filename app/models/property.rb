class Property < ApplicationRecord
  belongs_to :category, dependent: :destroy
end
