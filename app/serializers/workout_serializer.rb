class WorkoutSerializer < ActiveModel::Serializer
  attributes :id, :name, :type, :duration, :region, :description, :image, :cost, :level
  has_many :instructors
  has_many :schedules
end
