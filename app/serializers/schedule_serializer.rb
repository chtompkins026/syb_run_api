class ScheduleSerializer < ActiveModel::Serializer
  attributes :title, :start, :end, :instructor_id, :workout_id
  belongs_to :workout
  belongs_to :instructor
  has_many :bookings
end
