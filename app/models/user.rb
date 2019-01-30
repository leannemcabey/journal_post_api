class User < ApplicationRecord
  has_many :journals
  has_many :postcards, through: :journals
end
