class JournalSerializer < ActiveModel::Serializer
  attributes :id, :title, :created_at
  belongs_to :user
  has_many :postcards
end
