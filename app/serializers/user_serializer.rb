class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :street_address, :city, :state, :zipcode, :email, :password, :current_journal_id
  has_many :journals
  has_many :postcards, through: :journals
end
