class Client < ApplicationRecord
  # Tenant Of
  # belongs_to :account
  # accepts_nested_attributes_for :account

  # belongs_to :user#, :inverse_of => :clients
  # accepts_nested_attributes_for :user

  belongs_to :user
  
  has_many :bookings #, :inverse_of => :client
  accepts_nested_attributes_for :bookings

  has_many :workouts, through: :bookings

  has_many :lesson_payments, through: :bookings

  # mount_uploader :photo, ClientUploader

  def name
    "#{first_name} #{last_name}"
  end

  def email
    User.find_by_id(self.user_id)
  end

end
