class PostcardSerializer < ActiveModel::Serializer
  attributes :id, :journal_id, :location, :message, :date, :photo_url
  belongs_to :journal
end
