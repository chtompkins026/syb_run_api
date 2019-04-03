class Workout < ApplicationRecord
  has_many :instructors, :through => :bookings

  has_many :clients, :through => :bookings

  has_many :bookings #, :inverse_of => :workouts
  accepts_nested_attributes_for :bookings

  # mount_uploader :image, LessonUploader
end
