class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :account_type, :confirmation_token, :confirmed_at,
   :confirmation_sent_at, :unconfirmed_email, :created_at, :updated_at,
   :encrypted_password, :reset_password_token

   # has_many :workout_payments

end
