class Postcard < ApplicationRecord
  belongs_to :journal
  validates :location, presence: true
  validates :message, presence: true
  validates :date, presence: true
  validates :photo_url, presence: true
end
