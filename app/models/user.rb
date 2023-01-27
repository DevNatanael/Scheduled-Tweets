class User < ApplicationRecord
  has_secure_password

  #validações de email
  validates :email , presence: true
end
