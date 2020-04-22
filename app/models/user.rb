class User < ApplicationRecord
  extend Devise::Models
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable

  has_many :comments
end
