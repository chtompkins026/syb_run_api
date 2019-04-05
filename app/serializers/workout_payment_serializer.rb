class WorkoutPaymentSerializer < ActiveModel::Serializer
  attributes :payment_number, :status, :date, :cost, :service,
  :booking_id, :created_at, :updated_at, :user_id

  belongs_to :user
  belongs_to :booking
end
