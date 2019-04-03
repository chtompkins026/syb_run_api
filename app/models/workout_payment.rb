class WorkoutPayment < ApplicationRecord
  belongs_to :account #, :inverse_of => :workout_payments
  accepts_nested_attributes_for :account

  belongs_to :booking #, :inverse_of => :workout_payments
  accepts_nested_attributes_for :booking
end
