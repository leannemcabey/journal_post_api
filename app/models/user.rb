class User < ApplicationRecord
  has_many :journals
  has_many :postcards, through: :journals
  validates :username, uniqueness: true
  validates :username, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :street_address, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :zipcode, presence: true
  validates :email, presence: true
  validates :password, presence: true
end
