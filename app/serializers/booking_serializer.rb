class BookingSerializer < ActiveModel::Serializer
  attributes :id, :status, :title, :cost, :start, :cancellation_reason, :refunded, :instructor_id,
  :schedule_id, :created_at, :updated_at, :client_id

  belongs_to :schedule
  # belongs_to :user
  # belongs_to :instructor
  belongs_to :client
  has_many :workout_payments
end
