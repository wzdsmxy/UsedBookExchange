class Book < ApplicationRecord
  belongs_to :seller, class_name: "User", foreign_key: "user_id"
  has_many :shoppingcarts
  has_many :users, :through => :shoppingcarts
  #has_many :user through 
  
  has_attached_file :book_img, default_url: "/images/:style/missing.png"
                    # :path => ":rails_root/public/system/:attachment/:id/:style/:filename",
                    # :url => "/system/:attachment/:id/:style/:filename",
                    # :styles => { :book_index => "250x250>", :book_show => "100x100>" }
  validates_attachment_content_type :book_img, content_type: /\Aimage\/.*\z/
end
