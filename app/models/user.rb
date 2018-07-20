class User < ApplicationRecord
  has_many :shoppingcarts
  has_many :books, :through => :shoppingcarts
  
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable
  
  validates :email, uniqueness: true
  validates :username, uniqueness: true
  validates :role, :presence => true
  
  def email_changed?
    false
  end
end
