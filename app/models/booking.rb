class Booking < ApplicationRecord
  # belongs_to :account #:inverse_of => :bookings
  # accepts_nested_attributes_for :account

  belongs_to :user #:inverse_of => :bookings
  accepts_nested_attributes_for :user

  belongs_to :workout #, :inverse_of => :bookings
  accepts_nested_attributes_for :workout

  belongs_to :schedule #, :inverse_of => :bookings
  accepts_nested_attributes_for :schedule

  belongs_to :instructor #:inverse_of => :bookings
  accepts_nested_attributes_for :instructor

  belongs_to :client # :inverse_of => :bookings
  accepts_nested_attributes_for :client

  has_many :lesson_payments, dependent: :destroy, :inverse_of => :booking
  accepts_nested_attributes_for :lesson_payments

  validates :schedule_id, presence: true
end
