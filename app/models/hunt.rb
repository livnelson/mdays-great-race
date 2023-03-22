class Hunt < ApplicationRecord
  has_many :join_uhs, dependent: :destroy
  has_many :users, through: :join_uhs
end
