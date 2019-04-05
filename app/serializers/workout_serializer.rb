class WorkoutSerializer < ActiveModel::Serializer
  attributes :name, :type, :duration, :location, :description, :image, :cost, :level
  belongs_to :instructor 
end
