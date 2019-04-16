class InstructorSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :bio, :instagram, :user_id, :region
  # has_many :workouts
  has_many :schedules
end
