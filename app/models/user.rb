class User < ApplicationRecord
  validates :name, presence: true, length: { maximum: 15 } 
  REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, uniqueness: true, format: { with: REGEX }
  
  has_secure_password
  validates :password, length: { in: 8..32 }, format: { with: /\A[a-zA-Z0-9]+\z/ }
  validates :password_confirmation, length: { in: 8..32 }, format: { with: /\A[a-zA-Z0-9]+\z/ }
end

