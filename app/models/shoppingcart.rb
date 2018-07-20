class Shoppingcart < ApplicationRecord
  belongs_to :user
  belongs_to :book
  
  validates_uniqueness_of :user_id, scope: :book_id
end
