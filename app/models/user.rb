class User < ApplicationRecord
  has_secure_password
  has_many :join_uhs, dependent: :destroy
  has_many :hunts, through: :join_uhs

end
