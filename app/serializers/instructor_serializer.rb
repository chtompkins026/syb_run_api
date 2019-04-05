class InstructorSerializer < ActiveModel::Serializer
  attributes :first_name, :last_name, :email, :bio, :instagram, :user_id
  # has_many :workouts
  has_many :schedules
end
