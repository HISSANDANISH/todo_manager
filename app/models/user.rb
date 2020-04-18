class User < ApplicationRecord
  has_secure_password
  has_many :todos
  validates :first_name, presence: true
  validates :email, presence: true
end
