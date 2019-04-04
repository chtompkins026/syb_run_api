class Workout < ApplicationRecord
  has_many :schedules

  has_many :bookings, :through => :schedules
  accepts_nested_attributes_for :bookings

  has_many :instructors, :through => :schedules

  # has_many :clients, :through => :bookings

  # mount_uploader :image, LessonUploader
end
