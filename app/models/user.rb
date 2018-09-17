class User < ApplicationRecord
  validates :name, presence: true, length: { maximum: 49 }
  validates :email, presence: true, length:  { maximum: 49 }
end
