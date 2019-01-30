class PostcardSerializer < ActiveModel::Serializer
  attributes :id, :location, :message, :date, :photo_url
  belongs_to :journal
end
