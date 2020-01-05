class Like < ApplicationRecord
  belongs_to :property, dependent: :destroy
end
