class User < ApplicationRecord
  validates :name, presence: true, length: { maximum: 15 } 
  REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, uniqueness: true, format: { with: REGEX }
  
  has_secure_password
  validates :password, format: { with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]{8,32}+\z/i }
  
end

