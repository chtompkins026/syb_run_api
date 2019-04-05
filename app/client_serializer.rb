class ClientSerializer < ActiveModel::Serializer
  attributes :first_name, :last_name, :phone, :instagram, :user_id
  has_many :bookings 
end
