class User < ApplicationRecord
  validates :name, presence: true, format: { with: /\A[a-zA-Z]+\z/ }, length: { maximum: 15 }
  validates :password, presence: true, length: { is: 8 }
  validates :email, presence: true, uniqueness: { case_sensitive: false }, format: { with: /@/ }
end