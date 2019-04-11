class ClientSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :phone, :instagram, :user_id
  has_many :bookings
end
