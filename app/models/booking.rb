class Booking < ApplicationRecord
  # belongs_to :account #:inverse_of => :bookings
  # accepts_nested_attributes_for :account

  belongs_to :user #:inverse_of => :bookings
  accepts_nested_attributes_for :user

  belongs_to :schedule #, :inverse_of => :bookings

  belongs_to :workout #, :inverse_of => :bookings

  belongs_to :instructor #:inverse_of => :bookings
  accepts_nested_attributes_for :instructor

  belongs_to :client # :inverse_of => :bookings
  accepts_nested_attributes_for :client

  has_many :workout_payments

  validates :schedule_id, presence: true
end
