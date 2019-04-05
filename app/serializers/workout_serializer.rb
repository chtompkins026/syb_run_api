class WorkoutSerializer < ActiveModel::Serializer
  attributes :name, :type, :duration, :location, :description, :image, :cost, :level
  has_many :instructors
  has_many :schedules 
end
