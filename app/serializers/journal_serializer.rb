class JournalSerializer < ActiveModel::Serializer
  attributes :id, :title, :current_journal
  belongs_to :user
  has_many :postcards
end
