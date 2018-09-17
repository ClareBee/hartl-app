class User < ApplicationRecord
  validates :name, presence: true, length: { maximum: 49 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length:  { maximum: 49 }, format: { with: VALID_EMAIL_REGEX }
end