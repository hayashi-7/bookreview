class Book < ApplicationRecord
  with_options presence: true do
    validates :title
    validates :price, numericality: { greater_than_or_equal_to: 150, less_than_or_equal_to: 9_999_999 }
    validates :category_id
    validates :user
    validates :author
    validates :review
    validates :image
  end
end
