class Journal < ApplicationRecord
  belongs_to :user
  has_many :postcards
  validates :title, presence: true
end
