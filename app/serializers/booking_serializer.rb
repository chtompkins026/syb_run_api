class BookingSerializer < ActiveModel::Serializer
  attributes :status, :title, :cost, :start, :cancellation_reason, :refunded, :instructor_id,
  :schedule_id, :workout_id, :created_at, :updated_at, :user_id
  
end
