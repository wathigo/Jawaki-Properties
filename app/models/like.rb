class Like < ApplicationRecord
  belongs_to :property, dependent: :destroy
  belongs_to :user, dependent: :destroy
end
