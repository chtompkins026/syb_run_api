class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable
         # :jwt_authenticatable,
         # jwt_revocation_strategy: JWTBlacklist

    has_one :client
  # going to need to figure this out ... could
end
