class User < ApplicationRecord
  has_secure_password
  belongs_to :type_user
  validates_presence_of :name, :email, :password_digest, :type_user
  validates_uniqueness_of :email
  # Valid format email
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, format: { with: VALID_EMAIL_REGEX }
end
